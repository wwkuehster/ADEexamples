function [u,v]=computationtest(x,y)
        filename = 'H.csv';
	u = 2*x;
        v = 2*y;
        fid = fopen(filename,'wt');
        fprintf(fid,"%d,%d",u,v);
	exit       
end

