/*---------------Jorge Munoz Taylor---------------*/
/*-----------University of Costa Rica-------------*/
/*--------------Digital Circuits 2----------------*/
/*-------------------I-2018-----------------------*/

module Test4( /*Circular right shifting*/
	CLK,
	ENB,
	DIR,
	S_IN,
	MODO,
	D, 
	Q,
	S_OUT
);

	output CLK;
	output ENB;
	output DIR;
	output S_IN;
	output [1:0] MODO;
	output [3:0] D;

	input [3:0] Q;
	input S_OUT;
	
	reg CLK;
	reg ENB;
	reg DIR;
	reg S_IN;
	reg [1:0] MODO;
	reg [3:0] D;

	initial CLK 		= `LOW;
	initial	ENB 		= !(`ENABLE);
	initial DIR 		= `HIGH; 
	initial MODO 		= `PARA_LOAD;
	initial #96.35 MODO = `CIRC_SHIFT; 
	initial S_IN 		= `LOW;
	initial D 			= 4'b0001;	
	
	always  #`CLK_t4 CLK = !CLK; 
	
endmodule
/*------------------------------------------------------------------*/
