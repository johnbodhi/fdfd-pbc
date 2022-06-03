function [ F ] = NPointDFT( Q, frequency, N, delt )

    BINS = 1; 

    X = zeros( BINS, 1 ); F = zeros(BINS,1);
   
    time_shift = -4.333124703327753e-13;
    
    for z = 1:1

        for k = 1:BINS

            for n = 1:N

                    X( k, z ) = X( k, z ) + Q( z ) * exp( -1j * 2 * pi *  frequency * n * delt + time_shift );

            end
        end
        
        F( k, z ) = sum( X( 1:BINS, z ) ) * delt;        

    end
end


