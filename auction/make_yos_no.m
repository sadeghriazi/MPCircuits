bench = 'auction';

N = [2, 3, 4];
W = [16, 32];

for n = 1:length(N)
    for w = 1:length(W)
        fid_yos = fopen([bench, '_', num2str(N(n)), '_', num2str(W(w)), '.yos'], 'wt');
        fprintf(fid_yos, 'read_verilog ../circuit_synthesis_non_opt/syn_lib/*.v\n'); 
        fprintf(fid_yos, 'read_verilog *.v\n\n');
        fprintf(fid_yos, ['hierarchy -check -top ', bench, '_BMR_', num2str(N(n)), '_', num2str(W(w)), '\n']); 
        fprintf(fid_yos, 'proc; opt; flatten; opt; \n'); 
        fprintf(fid_yos, 'techmap -map ../circuit_synthesis_non_opt/lib/stdcells_S.v; opt;\n'); 
        fprintf(fid_yos, 'abc -liberty ../circuit_synthesis_non_opt/lib/asic_cell_yosys_extended.lib -script ../circuit_synthesis_non_opt/lib/script.abc; opt;\n'); 
        fprintf(fid_yos, 'clean; opt;\n');  
        fprintf(fid_yos, 'opt_clean -purge\n'); 
        fprintf(fid_yos, 'stat -liberty ../circuit_synthesis_non_opt/lib/asic_cell_yosys_extended.lib\n'); 
        fprintf(fid_yos, ['write_verilog -noattr -noexpr syn_yos_no/', bench, '_BMR_N_', num2str(N(n)), '_W_', num2str(W(w)), '_syn_yos.v\n\n']);
        fclose(fid_yos);
    end
end