function [u,v]=computationtest(x,y)
    for i = 1:10
        filename = 'MatlabOutput.txt';
        u = 2*i;
        v = 3*y*x;
        fid = fopen(filename,'a');
        fprintf(fid,"%d %d\n",u,v);
    end
	exit       
end

