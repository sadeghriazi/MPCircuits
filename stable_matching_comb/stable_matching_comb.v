`timescale 1ps / 1ps

module stable_matching
#(
	parameter Kr =10,   //number of preferences for list B
	parameter Ks =10,   //number of preferences for list A
	parameter S  =10,   //number of members in list A
	parameter R  =10    //number of members in list B
)
(
	g,
	pc_array,
	sIsMatch,
	sIsRunning,
	s,
	matchListMatrix_array,
	finishAND,
	propose,
	better,
	r,
	s1,
	encoderInput,
	encoderOutput,
	o
);
	
	
	//------------------------------- Functions
	function integer log2;
		input [31:0] value;
		reg [31:0] temp;
	begin
		temp = value - 1;
		for (log2=0; temp>0; log2=log2+1)
			temp = temp>>1;
	end
	endfunction
	
	//------------------------------- Local Parameters 
	localparam logS = log2(S);
	localparam logR = log2(R);
	localparam logKs = log2(Ks);
	localparam logKr = log2(Kr);
	localparam SRounded = 2**logS;
	
	//------------------------------- I/O
	input wire [R*Kr*logS-1 + S*Ks*logR-1  + 1:0]   g;
	// input wire [log2(Ks+1)-1:0] pc [S-1:0];
	input wire [log2(Ks+1)*S-1:0] pc_array;
	input wire [S-1:0] 	sIsMatch;
	input wire [S-1:0] 	sIsRunning;
	input wire [logS-1:0] s;
	// input wire [logS-1:0] matchListMatrix [R-1:0]; 
	input wire [logS*R-1:0] matchListMatrix_array;
	input wire finishAND;
	output wire propose;
	output wire better;
	output wire [logR-1:0] r;
	output wire [logS-1:0] s1;
	output wire [SRounded-1:0] encoderInput;
	output wire [logS-1:0] encoderOutput;
	output wire [R*logS-1:0] o;
	
	wire [R*Kr*logS-1:0] rPref;   //preference list for all members of r
	wire [S*Ks*logR-1:0] sPref;   //preference list for all members of s
	
	
	wire [R*logS-1:0] matchList;
	wire finish;

	wire [log2(Ks+1)-1:0] pc [S-1:0];
	wire [logS-1:0] matchListMatrix [R-1:0]; 

	//------------------------------- Local wires
	wire [logS-1:0] rPrefMatrix [R-1:0][Kr-1:0];
	wire [logR-1:0] sPrefMatrix [S-1:0][Ks-1:0];
	wire [Kr-1:0] s1Compare,s2Compare;
	wire [Kr-1:0] wireXOR1,wireAND1,wireAND2,wireOR1;
	// wire better;
	wire [log2(Ks+1)-1:0] pcS;
	// wire [logS-1:0] s1;
	wire [logS-1:0] s2;
	// wire propose;
	// wire [logR-1:0] r;
	wire [SRounded-1:0] canPropose;
	// wire [SRounded-1:0] encoderInput;
	wire [SRounded-1:0] encoderOR1;
	// wire [logS-1:0] encoderOutput;
	
	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ Generate Part
	genvar i,j;

	generate
		for (i=0;i<R;i=i+1)begin : for_matchListMatrix1
			for (j=0;j<logS;j=j+1)begin : for_matchListMatrix2
				assign matchListMatrix[i][j] = matchListMatrix_array[logS*i+j];
			end
		end
	endgenerate

	generate
		for (i=0;i<S;i=i+1)begin : pc_asgn1
			for (j=0;j<log2(Ks+1);j=j+1)begin : pc_asgn2
				assign pc[i][j] = pc_array[log2(Ks+1)*i+j];
			end
		end
	endgenerate
	
	generate  //[0]
		for (i=0;i<R;i=i+1)begin : rPref_asgn1
			for (j=0;j<Kr;j=j+1)begin : rPref_asgn2
				assign rPrefMatrix[i][j] = rPref[logS*Kr*i + logS*(j+1) -1 : logS*Kr*i + logS*j];
			end
		end
	endgenerate 
	
	generate //[0]
		for (i=0;i<S;i=i+1)begin : sPref_asgn1
			for (j=0;j<Ks;j=j+1)begin : sPref_asgn2
				assign sPrefMatrix[i][j] = sPref[logR*Ks*i + logR*(j+1) -1 : logR*Ks*i + logR*j];
			end
		end
	endgenerate 
	
	generate //[0]
		for (i=0;i<R;i=i+1)begin : matchList_asgn1
			assign matchList [logS*(i+1) -1    : logS*i   ] = matchListMatrix [i] ;
		end
	endgenerate 

	generate //[1] & [2]
		for (i=0;i<Kr;i=i+1)begin : s1_and_s2_Compare
			assign s1Compare[i]= ~|(s1^rPrefMatrix [r][i]) ;  	// [1]  
			assign s2Compare[i]= ~|(s2^rPrefMatrix [r][i]) ;		// [1]
			
			assign wireXOR1 [i] = s1Compare [i] ^ s2Compare [i];		// [2]
			if (i==0)begin : if_wireOR1
				assign wireOR1 [i] = wireXOR1[i];
				assign wireAND1 [i] = wireOR1[i];
			end else begin 
				assign wireOR1 [i] = wireXOR1[i] | wireOR1[i-1];
				assign wireAND1 [i] = ~wireOR1 [i-1] & wireXOR1[i];
			end
			
			assign wireAND2 [i] = wireAND1 [i] & s2Compare[i];
		end
	endgenerate 
	
	
	assign better = | wireAND2 ; // [2]
	assign s1=matchListMatrix[r];
	assign pcS=pc[s];
	assign s2=s;
	assign finish=finishAND;
	assign propose= |pcS & ~sIsMatch[s];
	assign r = (pcS==0) ? sPrefMatrix[s][Ks-pcS-1] : sPrefMatrix[s][Ks-pcS];
	
	assign rPref[R*Kr*logS-1:0] = g[R*Kr*logS-1  :0] ;
	assign sPref[S*Ks*logR-1:0] = g[R*Kr*logS-1 + S*Ks*logR-1  + 1: R*Kr*logS-1  + 1 ] ;
	// assign o[R*logS]=finish;
	assign o[R*logS-1:0] = matchList[R*logS-1:0];

	
	generate // choose who to propose next 
		for (i=0;i<SRounded;i=i+1)begin : propose_asgn
			if (i<S) begin
				assign canPropose[i] = |pc[i] & ~sIsMatch[i] & ~sIsRunning[i];
			end else begin
				assign canPropose[i] = 0;
			end
			if (i==0) begin
				assign encoderOR1[i] = canPropose[i];
				assign encoderInput[i] = encoderOR1[i];
			end else begin
				assign encoderOR1[i] = encoderOR1[i-1] | canPropose[i];
				assign encoderInput[i] = ~encoderOR1[i-1] & canPropose[i];
			end
		end
	endgenerate
	
	encoder 
	#(.logS(logS))
	ENCODER
	(.in(encoderInput),
	.out(encoderOutput));
	
endmodule

module stable_matching_comb
#(
	parameter Kr =10,   //number of preferences for list B
	parameter Ks =10,   //number of preferences for list A
	parameter S  =10,   //number of members in list A
	parameter R  =10,   //number of members in list B
	parameter N = (S==Ks) ? S*S-S+2 : S*Ks    //number of iterations
)
(
	p_input,
	o
	
);

//------------------------------- Functions
	function integer log2;
		input [31:0] value;
		reg [31:0] temp;
	begin
		temp = value - 1;
		for (log2=0; temp>0; log2=log2+1)
			temp = temp>>1;
	end
	endfunction
	
	//------------------------------- Local Parameters 
	localparam logS = log2(S);
	localparam logR = log2(R);
	localparam logKs = log2(Ks);
	localparam logKr = log2(Kr);
	localparam SRounded = 2**logS;

input wire [R*Kr*logS-1 + S*Ks*logR-1  + 1:0]  p_input;
output wire [R*logS-1:0] o;

reg [log2(Ks+1)-1:0] pc [N-1:0][S-1:0]; //proposal counts
reg [logR-1:0] sInMatch [N-1:0][S-1:0];
reg [S-1:0] sIsMatch [N-1:0];
reg [S-1:0] sIsRunning [N-1:0];
reg [R-1:0] rIsMatch [N-1:0];
reg [logS-1:0] s [N-1:0];
reg [logS-1:0] matchListMatrix [N-1:0][R-1:0]; 
reg [N-1:0] finishAND;	
reg [N-1:0] propose;
reg [N-1:0] better;
reg [logR-1:0] r [N-1:0];
reg [logS-1:0] s1 [N-1:0];
reg [SRounded-1:0] encoderInput [N-1:0];
reg [logS-1:0] encoderOutput [N-1:0];
reg [R*logS-1:0] o_interm [N-1:0];
wire [logS*R-1:0] matchListMatrix_array [N-1:0];
wire [log2(Ks+1)*S-1:0] pc_array [N-1:0];

integer p, i, n;

wire [logS-1:0] s0;
assign s0 = {logS{1'b0}};
wire [S-1:0] sIsRunning0;
assign sIsRunning0 = {{S-1{1'b0}},{1'b1}};
wire finishAND0;
assign finishAND0 = 0;
wire [log2(Ks+1)-1:0] pc0;
assign pc0 = Ks;
wire [logR-1:0] sInMatch0;
assign sInMatch0 = {logR{1'b0}};

always@* begin
	s[0] = s0;
	sIsRunning[0] = sIsRunning0;
	finishAND[0] = finishAND0;
	for(p=0; p<R; p=p+1) begin
		rIsMatch[0][p] = finishAND0;
		matchListMatrix [0][p] = s0;
	end
	for(p=0; p<S; p=p+1) begin
		pc[0][p] = pc0;
		sIsMatch[0][p] = finishAND0;
		sInMatch[0][p] = sInMatch0;
	end
end

wire [N-1:0] propose_wire;
wire [N-1:0] better_wire;
wire [logR-1:0] r_wire [N-1:0];
wire [logS-1:0] s1_wire [N-1:0];
wire [SRounded-1:0] encoderInput_wire [N-1:0];
wire [logS-1:0] encoderOutput_wire [N-1:0];
wire [R*logS-1:0] o_interm_wire [N-1:0];

assign propose_wire[0] = {N{1'b0}};
assign better_wire[0] = {N{1'b0}};
assign r_wire[0] = {logR{1'b0}};
assign s1_wire [0] = {logS{1'b0}};
assign encoderInput_wire[0] = {SRounded{1'b0}};
assign encoderOutput_wire[0] = {logS{1'b0}};
assign o_interm_wire[0] = {(R*logS-1){1'b0}};

always @* begin
	for(n=0; n<N; n=n+1) begin
		propose[n] = propose_wire[n];
		better[n] = better_wire[n];
		r[n] = r_wire[n];
		s1[n] = s1_wire[n];
		encoderInput[n] = encoderInput_wire[n];
		encoderOutput[n] = encoderOutput_wire[n];
		o_interm[n] = o_interm_wire[n];
	end
end

always @* begin
	for(n=1; n<N; n=n+1) begin
		if (propose[n]) begin
			for (i=0; i<S; i=i+1) begin
				if (i==s[n-1]) begin
					pc[n][i] = pc[n-1][i] - 1;
				end
				else begin
					pc[n][i] = pc[n-1][i];
				end
			end
			if (rIsMatch[n-1][r[n]]==0) begin
				for (i=0; i<R; i=i+1) begin
					if (i == r[n]) begin
						matchListMatrix[n][i] = s[n-1]; // assign them together
						rIsMatch[n][i] = 1'b1;
					end
					else begin
						matchListMatrix[n][i] = matchListMatrix[n-1][i];
						rIsMatch[n][i] = rIsMatch[n-1][i];
					end
				end
				for (i=0; i<S; i=i+1) begin
					if (i == s[n-1]) begin
						sInMatch[n][i] = r[n];
						sIsMatch[n][i] = 1'b1;
					end
					else begin
						sInMatch[n][i] = sInMatch[n-1][i];
						sIsMatch[n][i] = sIsMatch[n-1][i];
					end
				end				
			end 
			else begin // if r is already matched 
				for (i=0; i<R; i=i+1) begin
					rIsMatch[n][i] = rIsMatch[n-1][i];
				end

				if	(better[n]) begin
					for (i=0; i<R; i=i+1) begin
						if (i == r[n]) begin
							matchListMatrix[n][i] = s[n-1]; // assign them together
						end
						else begin
							matchListMatrix[n][i] = matchListMatrix[n-1][i];
						end
					end
					for (i=0; i<S; i=i+1) begin
						if (i == s[n-1]) begin
							sInMatch[n][i] = r[n];
							sIsMatch[n][i] = 1'b1;
						end
						else if (i == s1[n]) begin
							sIsMatch[n][i] = 1'b0;	
							sInMatch[n][i] = sInMatch[n-1][i];
						end
						else begin
							sIsMatch[n][i] = sIsMatch[n-1][i];
							sInMatch[n][i] = sInMatch[n-1][i];
						end
					end
				end
				else begin
					for (i=0; i<R; i=i+1) begin
						matchListMatrix[n][i] = matchListMatrix[n-1][i];
					end
					for (i=0; i<S; i=i+1) begin
						sIsMatch[n][i] = sIsMatch[n-1][i];
						sInMatch[n][i] = sInMatch[n-1][i];
					end
				end
			end
		end
		else begin
			for (i=0; i<S; i=i+1) begin
				pc[n][i] = pc[n-1][i];
			end
			for (i=0; i<R; i=i+1) begin
				matchListMatrix[n][i] = matchListMatrix[n-1][i];
				rIsMatch[n][i] = rIsMatch[n-1][i];
			end
			for (i=0; i<S; i=i+1) begin
				sInMatch[n][i] = sInMatch[n-1][i];
				sIsMatch[n][i] = sIsMatch[n-1][i];
			end
		end

		for (i=0; i<S; i=i+1) begin
			if (i == s[n-1]) begin
				sIsRunning[n][i]=0;
			end
			else if (i == encoderOutput[n]) begin
				if (encoderInput[n][encoderOutput[n]] == 1) begin
					sIsRunning[n][i] = 1;
				end
				else begin
					sIsRunning[n][i] = sIsRunning[n-1][i];
				end
			end
			else begin
				sIsRunning[n][i] = sIsRunning[n-1][i];
			end

		end

		if (encoderInput[n][encoderOutput[n]] == 1) begin //check this if statement with the previous for loop
			// sIsRunning[n][encoderOutput[n]] = 1;
			s[n] = encoderOutput[n];
		end
		else begin
			// sIsRunning[n][encoderOutput[n]] = sIsRunning[n-1][encoderOutput[n]];   
			s[n] = s[n-1];
		end

		for (p=0; p<S; p=p+1) begin
			finishAND[n] = finishAND[n-1] & ~|pc[n-1][p];
		end
	end
end

localparam log2_KsP1 = log2(Ks+1);

genvar v, k, l;
generate
	for (v=0; v<N; v=v+1)begin : arraykoni
		for (k=0;k<R;k=k+1)begin : matchlistmat_asgn1
			for (l=0;l<logS;l=l+1) begin : matchlistmat_asgn2
				assign matchListMatrix_array[v][logS*k+l] = matchListMatrix[v][k][l];
			end
		end
	
		for (k=0;k<S;k=k+1)begin : pc_array_for1
			for (l=0;l<log2(Ks+1);l=l+1)begin : pc_array_for2
				assign pc_array[v][log2_KsP1*k+l] = pc[v][k][l];
			end
		end
	end
endgenerate

genvar m;
generate
	for(m=1; m<N; m=m+1) begin
		stable_matching #(.Kr(Kr), .Ks(Ks), .S(S), .R(R)) stable_matching_ (
							.g(p_input),
							.pc_array(pc_array[m-1]),
							.sIsMatch(sIsMatch[m-1]),
							.sIsRunning(sIsRunning[m-1]),
							.s(s[m-1]),
							.matchListMatrix_array(matchListMatrix_array[m-1]),
							.finishAND(finishAND[m-1]),
							.propose(propose_wire[m]),
							.better(better_wire[m]),
							.r(r_wire[m]),
							.s1(s1_wire[m]),
							.encoderInput(encoderInput_wire[m]),
							.encoderOutput(encoderOutput_wire[m]),
							.o(o_interm_wire[m])
						);
	end
endgenerate

assign o = o_interm[N-1];
endmodule