function im = returnDiffIm(i1,i2)

[a,b] = size(i1);

Ib = zeros(a,b);
for j = 1:a
    
    
        for k = 1:b
            
            Ib(j,k) = i2(j,k) - i1(j,k);
    
    
    
        end
    
end

im = Ib;

end