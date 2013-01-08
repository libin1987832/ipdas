function [BQP,output] = random_test(n,dH,varargin)

addpath ../src/
data.n = n;
data.dH = dH;
option  = ipdasoptimset(varargin{:});
BQP = random_bqp(data);
[BQP,output] = ipdas(BQP,option);

end