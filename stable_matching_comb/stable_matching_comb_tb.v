`timescale 1ps / 1ps

module testBench;

	parameter Kr =2;   //number of preferences for list B
	parameter Ks =2;   //number of preferences for list A
	parameter S  =3;   //number of members in list A
	parameter R  =3;   //number of members in list B
	parameter N = S*S-S+2;    //number of iterations

	//------------------------------------------------------------------------------------------------------------------------------------- Functions
	function integer log2;
		input [31:0] value;
		reg [31:0] temp;
	begin
		temp = value-1;
		for (log2=0; temp>0; log2=log2+1)
			temp = temp>>1;
	end
	endfunction
	
	//------------------------------------------------------------------------------------------------------------------------------------- Local Parameters 
	localparam logS = log2(S);
	localparam logR = log2(R);
	localparam logKs = log2(Ks);
	localparam logKr = log2(Kr);
	parameter stopTime =(S*S-S+1)*2 ;//    *2 for converting to clk cycles each clk=#2  and the first term s^2 - s +1 is the worst case scenario 
	
	//------------------------------------------------------------------------------------------------------------------------------------- I/O
	
	wire [R*logS:0] o;
	
	
	reg [R*Kr*logS-1 + S*Ks*logR-1 + 1:0] g;
	
	reg [logS-1:0] gMatrix [R*Kr-1 + S*Ks-1 +1:0];
	
	integer op_out;
	reg clk,rst;
	wire [R*logS-1:0] matchListTB; 
	wire finish;
	//wire [S-1:0] 	sIsMatchWire;
	reg [logS-1:0] matchListMatrix [R-1:0];
	
	
	initial begin
		clk = 0;
		op_out=$fopen("matchListVerilog.txt","w");
		//$readmemb("e.txt",eMatrix);
		$readmemb("g.txt",gMatrix);
	end

	assign finish=o[R*logS];
	assign matchListTB=o[R*logS-1:0];
	//------------------------------------------------------------------------------------------------------------------------------------- Instantiate the Unit Under Test (UUT)
	stable_matching_comb	
	#(
	.Kr(Kr),
	.Ks(Ks),
	.S(S),
	.R(R),
	.N(N)
	)
	uut
	(
		g,o
	);

	//-------------------------------------------------------------------------------------------------------------------------------------  test bench
	always #1 clk= ~clk;	

	initial begin
		
		// clk=0;
		// rst=1;
		// #2;
		// rst=0;
		#stopTime;
		$writememb("matchListVerilog.txt",matchListMatrix);
		$stop;
		
	end
      
/* 	always@(posedge clk) begin
		if (|sIsMatchWire & ~rst) begin
			$fwrite(op_out,"%b\n",matchListTB);
		end
	end */
	  
	//------------------------------------------------------------------------------------------------------------------------------------- Translating wires, changing matrix to array
	genvar i,j;
	// generate  //creating final rPrefTB
	// 	for (i=0;i<R*Kr+S*Ks;i=i+1)begin : e_asgn1
	// 		always @(*) begin
	// 			e [logS*(i+1)  -1 : logS*i ] = eMatrix [i] ;
	// 		end
	// 	end
	// endgenerate 

	generate  // creating final sPrefTB
		for (i=0;i<R*Kr+S*Ks;i=i+1)begin : g_asgn1
			always @(*) begin
				g [logS*(i+1)  -1 : logS*i ] = gMatrix [i] ;
			end
		end
	endgenerate 
	
	generate //translating results
		for (i=0;i<R;i=i+1)begin : matchList_asgn2
			always @(*) begin
			 	matchListMatrix [i]= matchListTB [logS*(i+1) -1    : logS*i   ] ;
			end
		end
	endgenerate 
	
	
	
endmodule

