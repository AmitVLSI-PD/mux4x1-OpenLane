module mux4x1 (
       input wire I0, I1, I2, I3,  // 4 input lines
       input wire S1, S0,          // 2 select lines
       output wire Y               // Output
   );
       wire not_s1, not_s0;        // Inverted select lines
       wire and0, and1, and2, and3; // AND gate outputs

       // Inverters for select lines
       not (not_s1, S1);
       not (not_s0, S0);

       // AND gates for each input selection
       and (and0, I0, not_s1, not_s0); // S1=0, S0=0 -> I0
       and (and1, I1, not_s1, S0);     // S1=0, S0=1 -> I1
       and (and2, I2, S1, not_s0);     // S1=1, S0=0 -> I2
       and (and3, I3, S1, S0);         // S1=1, S0=1 -> I3

       // OR gate to combine AND outputs
       or (Y, and0, and1, and2, and3);
   endmodule
