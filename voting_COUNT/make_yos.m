bench = 'voting';

% no. of candidates, nc = 2^N, no. of voters, m = 2^M

% N = 1, M = 2, 3
% N = 2, M = 2, 3, 4
% N = 3, M = 4

N = [3];
M = [4];

for m = 1:length(M)
    for n = 1:length(N)
        fid_yos = fopen([bench, '_', num2str(N(n)), '_', num2str(M(m)), '.yos'], 'wt');
        fprintf(fid_yos, 'read_verilog ../circuit_synthesis/syn_lib/*.v\n'); 
        fprintf(fid_yos, 'read_verilog *.v\n\n');
        fprintf(fid_yos, ['hierarchy -check -top ', bench, '_BMR_', num2str(N(n)), '_', num2str(M(m)), '\n']); 
        fprintf(fid_yos, 'proc; opt; flatten; opt; \n'); 
%         fprintf(fid_yos, 'techmap -map ../circuit_synthesis/lib/stdcells_S.v; opt;\n'); 
        fprintf(fid_yos, 'techmap ; opt;\n'); 
        fprintf(fid_yos, 'abc -liberty ../circuit_synthesis/lib/asic_cell_yosys_extended.lib -script ../circuit_synthesis/lib/script.abc; opt;\n'); 
        fprintf(fid_yos, 'clean; opt;\n');  
        fprintf(fid_yos, 'opt_clean -purge\n'); 
        fprintf(fid_yos, 'stat -liberty ../circuit_synthesis/lib/asic_cell_yosys_extended.lib\n');  
        fprintf(fid_yos, ['write_verilog -noattr -noexpr syn_yos/', bench, '_BMR_N_', num2str(N(n)), '_M_', num2str(M(m)), '_syn_yos.v\n\n']);
        fclose(fid_yos);
    end
end