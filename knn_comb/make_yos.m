bench = 'knn_comb';

K = [1, 2, 3];
N = [8, 16];

for k = 1:length(K)
    for n = 1:length(N)
        fid_yos = fopen([bench, '_', num2str(K(k)), '_', num2str(N(n)), '.yos'], 'wt');
        fprintf(fid_yos, 'read_verilog ../circuit_synthesis/syn_lib/*.v\n'); 
        fprintf(fid_yos, 'read_verilog *.v\n\n');
        fprintf(fid_yos, ['hierarchy -check -top ', bench, '_BMR_', num2str(K(k)), '_', num2str(N(n)), '\n']); 
        fprintf(fid_yos, 'proc; opt; flatten; opt; \n'); 
        fprintf(fid_yos, 'techmap -map ../circuit_synthesis/lib/stdcells_S.v; opt;\n'); 
        fprintf(fid_yos, 'abc -liberty ../circuit_synthesis/lib/asic_cell_yosys_extended.lib -script ../circuit_synthesis/lib/script.abc; opt;\n'); 
        fprintf(fid_yos, 'clean; opt;\n');  
        fprintf(fid_yos, 'opt_clean -purge\n'); 
        fprintf(fid_yos, 'stat -liberty ../circuit_synthesis/lib/asic_cell_yosys_extended.lib\n'); 
        fprintf(fid_yos, ['write_verilog -noattr -noexpr syn_yos/', bench, '_BMR_K_', num2str(K(k)), '_N_', num2str(N(n)), '_syn_yos.v\n\n']);
        fclose(fid_yos);
    end
end