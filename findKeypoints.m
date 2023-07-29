function kp_vec = findKeypoints(i1,i2,i3)

[w,h] = size(i1);
ii = 1;
neighbors = zeros(1,26);
kp_vec1 = 0;
cntr = 0;
cntr2 = 0;

%for all the pixels of the middle image
for i = 2:w-1
   
    for j = 2:h-1
        
        k = 1;
        m = -1;
        n = -1;
        
        for x2 = 1:3
            
            b=n;
            
            for y2 = 1:3
               
                %put all the neighbors of the current pixel in a vector
                
                %if it is the middle pixel take only from the above and the below
                if m == 0 && b == 0
                    cntr = cntr + 1
                    neighbors(k) = i1(i+m,j+b);
                    neighbors(k+1) = i3(i+m,j+b);
                    
                    k = k + 2;
                    
                else
                    
                    neighbors(k) = i1(i+m,j+b);
                    neighbors(k+1) = i2(i+m,j+b);
                    neighbors(k+2) = i3(i+m,j+b);
                    
                    k = k + 3;
                    
                end
                
                
                b=b+1;
            end
            m=m+1;
        end
        
        
        
        
        %check if the current pixel is the minimum or maximum
        if i2(i,j) < min(neighbors) || i2(i,j) > max(neighbors)
            cntr2 = cntr2 + 1
            kp_vec1(ii) = i2(i,j);
            ii = ii + 1;
        end
        
        
        
        
        
        
    end
    
end

kp_vec = kp_vec1;

end