module alu(C,S,A,B,F);
input	C;
input[1:0]S;
input [1:0]A;
input [1:0]B;
output reg[2:0]F;

always@(C,S[0],S[1])begin
	if(C==0 && S[1]==0 && S[0]==0)begin
		F <= A;
	end
	
	if(C==0 && S[1]==0 && S[0]==1)begin
		F <= A&B;
	end
	
	if(C==0 && S[1]==1 && S[0]==0)begin
		F <= A|B;
	end
	
	if(C==0 && S[1]==1 && S[0]==1)begin
		F <= ~A;
	end
	
	if(C==1 && S[1]==0 && S[0]==0)begin
		F <= A+B;
	end
	
	if(C==1 && S[1]==0 && S[0]==1)begin
		F <= A-B;
	end
	
	if(C==1 && S[1]==1 && S[0]==0)begin
		F <= A+1;
	end
	
	if(C==1 && S[1]==1 && S[0]==1)begin
		F <= A-1;
	end
	
	
end
endmodule
