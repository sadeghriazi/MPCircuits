# MPCircuits
## Optimized Circuit Generation for Secure Multiparty Computation by the BMR protocol. 

This repository presents a tool-chain to generate optimized Boolean circuit for the realization of the BMR protocol presented
[here](https://github.com/cryptobiu/Semi-Honest-BMR).
The tool-chain uses logic synthesis tools (Synopsys DC or Yosys) to generate the circuit.

## Steps:

1. Write a Verilog file (`.v`) describing the function. 
You can utilize the free-XOR optimized implementations of common arithmetic and logical operations provided in the 
[syn_lib](/circuit_synthesis/syn_lib/). 
2. Write a wrapper according to the circuit format
provided below. 
3. Synthesize the Verilog file using the BMR-optimized [Cell Library](/circuit_synthesis/lib/) to generate
a netlist Verilog file (`.v`). It supports synthesis with 
[Synopsys Design Compiler](https://www.synopsys.com/support/training/rtl-synthesis/design-compiler-rtl-synthesis.html) or 
[Yosys-ABC](http://www.clifford.at/yosys/).
4. Translate the netlist file (`.v`) to a circuit description file compatible with the BMR realization
by running `V2BMR_Main` in the [bmr](/bmr) directory.
5. Execute the BMR framework with the compiled circuit description file. 


## Circuit Format
All the input bits from all the parties are concatenated to form a single input `p_input`. The distribution of the bits is given as an argument to the `V2BMR_Main` function. The module structure for N-bit input and M-bit output is as follows. 
```
module _name_ ( 
  input [N-1:0] p_input,
  output [M-1:0] o
  );
  
  //description
  
endmodule 
```

## BMR Format
```
# first row is comment
<No_of_gates> <No_of_parties> <No_of_wires>
for n = 0 to <No_of_parties>-1
	Pn <No_of_input_wires>
	<indices of input wires that belong to Pn>
endfor
Out <No_of_output_wires>
<indices of output wires>
for g = 0 to <No_of_gates>-1
	<index of input0 wire> <index of input1 wire>  <index of output wire> <truth table>
endfor
```

## Verilog to BMR format
#### Compile:
Go to the `bmr` directory.
```
  $ ./configure
  $ cd bin
  $ make
```
#### Run:
```
./V2BMR_Main 

  -h [ --help ]         produce help message.
  -i [ --netlist ] arg  Input netlist (verilog .v) file address.
  -b [ --bmr ] arg      Output bmr circuit file address.
  -n [ --np ] arg       Number of parties.
  -p [ --perparty ] arg No of bits for every party (seperated by space)

```
If arguments to both -n and -p are specified, the argument to -n is ignored.

## Citation
```
@inproceedings{riazi2019mpcircuits,
  title={MPCircuits: Optimized Circuit Generation for Secure Multi-Party Computation},
  author={Riazi, M Sadegh and Javaheripi, Mojan and Hussain, Siam U and Koushanfar, Farinaz},
  booktitle={2019 IEEE International Symposium on Hardware Oriented Security and Trust (HOST)},
  pages={198--207},
  year={2019},
  organization={IEEE}
}
```

## References
- Ben-Efraim, Aner, Yehuda Lindell, and Eran Omri. "Optimizing semi-honest secure multiparty computation for the internet." Proceedings of the 2016 ACM SIGSAC Conference on Computer and Communications Security. ACM, 2016. 

- Riazi, M. Sadegh, Mojan Javaheripi, Siam U. Hussain, and Farinaz Koushanfar. "MPCircuits: Optimized Circuit Generation for Secure Multi-Party Computation." In 2019 IEEE International Symposium on Hardware Oriented Security and Trust (HOST), pp. 198-207. IEEE, 2019.
