bench = 'voting';

M = [3, 4];
N = [1, 2, 3];

for m = 1:length(M)
    for n = 1:length(N)
        fid_yos = fopen([bench, '_', num2str(N(n)), '_', num2str(M(m)), '.yos'], 'wt');
        fprintf(fid_yos, 'read_verilog ../circuit_synthesis/syn_lib/*.v\n'); 
        fprintf(fid_yos, 'read_verilog *.v\n\n');
        fprintf(fid_yos, ['synth -top ', bench, '_BMR_', num2str(N(n)), '_', num2str(M(m)), '\n']); 
        fprintf(fid_yos, 'flatten; opt; proc; opt; fsm; opt; memory; opt;\n'); 
        fprintf(fid_yos, 'techmap -map ../circuit_synthesis/lib/stdcells_S.v\n'); 
        fprintf(fid_yos, 'opt;\n'); 
        fprintf(fid_yos, 'dfflibmap -liberty ../circuit_synthesis/lib/asic_cell_yosys_extended.lib\n'); 
        fprintf(fid_yos, 'abc -liberty ../circuit_synthesis/lib/asic_cell_yosys_extended.lib \n'); 
        fprintf(fid_yos, 'opt; clean; opt;\n');  
        fprintf(fid_yos, 'opt_clean -purge\n'); 
        fprintf(fid_yos, ['write_verilog -noattr -noexpr syn_yos/', bench, '_BMR_N_', num2str(N(n)), '_M_', num2str(M(m)), '_syn_yos.v\n\n']);
        fclose(fid_yos);
    end
end


