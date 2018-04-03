bench = 'stable_matching_comb';

Ks = [4, 6, 8, 12];
S = [4, 6, 8, 12];

for k = 1:length(Ks)
    for s = 1:length(S)
        fid_yos = fopen([bench, '_', num2str(Ks(k)), '_', num2str(S(s)), '.yos'], 'wt');
        fprintf(fid_yos, 'read_verilog ../circuit_synthesis/syn_lib/*.v\n'); 
        fprintf(fid_yos, 'read_verilog *.v\n\n');
        fprintf(fid_yos, ['hierarchy -check -top ', bench, '_BMR_', num2str(Ks(k)), '_', num2str(S(s)), '\n']); 
        fprintf(fid_yos, 'proc; opt; flatten; opt; \n'); 
        fprintf(fid_yos, 'techmap -map ../circuit_synthesis/lib/stdcells_S.v; opt;\n'); 
        fprintf(fid_yos, 'abc -liberty ../circuit_synthesis/lib/asic_cell_yosys_extended.lib -script ../circuit_synthesis/lib/script.abc; opt;\n'); 
        fprintf(fid_yos, 'clean; opt;\n');  
        fprintf(fid_yos, 'opt_clean -purge\n'); 
        fprintf(fid_yos, 'stat -liberty ../circuit_synthesis/lib/asic_cell_yosys_extended.lib\n'); 
        fprintf(fid_yos, ['write_verilog -noattr -noexpr syn_yos/', bench, '_BMR_Ks_', num2str(Ks(k)), '_S_', num2str(S(s)), '_syn_yos.v\n\n']);
        fclose(fid_yos);
    end
end