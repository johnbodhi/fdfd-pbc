% FDTDEYR  = sum(sum(atan2(imag(eyr),real(eyr))*180/pi))/Nxy
% FDTDHXR = sum(sum(atan2(imag(hxr),real(hxr))*180/pi))/Nxy
% FDTDEYT  = sum(sum(atan2(imag(eyt),real(eyt))*180/pi))/Nxy
% FDTDHXT  = sum(sum(atan2(imag(hxt),real(hxt))*180/pi))/Nxy

%time_steps = time_step;

% Complexify incidence fields...

Einc_xi = zeros( Nxy, 1 ); 
for i = 1:Nxy
    Einc_xi( i ) = Einc_x( i, 1 ) + 1j * Einc_x( i, 2 );        
end    

Einc_x0 = sum( Einc_xi )  / Nxy;
Einc_xi = reshape(Einc_xi,[Nx,Ny]);
% Xref = ( sum(reflection_ex_dft) / Nxy ) / Einc_x0;
% Escat_x0 = Xref * Einc_x0;

Einc_yi = zeros( Nxy, 1 ); 
for i = 1:Nxy
    Einc_yi( i ) = Einc_y( i, 1 ) + 1j * Einc_y( i, 2 );        
end
Einc_y0 = sum( Einc_yi )  / Nxy;
Einc_yi = reshape(Einc_yi,[Nx,Ny]);
% Yref = ( sum(reflection_ey_dft) / Nxy ) / Einc_y0;
% Einc_y0 = Yref * Einc_y0;


% Complexify reflection plane fields...

Escat_xi = zeros( Nxy, 1 ); 
for i = 1:Nxy
    Escat_xi( i ) = Escat_x_Ref( i, 1 ) + 1j * Escat_x_Ref( i, 2 );        
end    
Escat_xr0 = sum( Escat_xi )  / Nxy;
Escat_xr = reshape(Escat_xi,[Nx,Ny]);
%Escat_xr = sum(sum(Escat_xr))/Nxy;
% Xref = ( sum(reflection_ex_dft) / Nxy ) / Escat_x0;
% Escat_x0 = Xref * Escat_x0;

%Escat_xr = zeros(Nx,Ny);
%atan2(imag(Escat_xi),real(Escat_xi))*180/pi

%[ Escat_xr0 ] = NPointDFT( Escat_xr, frequency, time_steps, delt);

Escat_yi = zeros( Nxy, 1 ); 
for i = 1:Nxy
    Escat_yi( i ) = Escat_y_Ref( i, 1 ) + 1j * Escat_y_Ref( i, 2 );        
end
Escat_yr0 = sum( Escat_yi )  / Nxy;
Escat_yr = reshape(Escat_yi,[Nx,Ny]);
%Escat_yr = sum(sum(Escat_yr))/Nxy;
% Yref = ( sum(reflection_ey_dft) / Nxy ) / Escat_y0;
% Escat_y0 = Yref * Escat_y0;

%Escat_yr = zeros(Nx,Ny);
%FDFDEYR = atan2(imag(Escat_yr),real(Escat_yr))*180/pi

%[ Escat_yr0 ] = NPointDFT( Escat_yr, frequency, time_steps, delt);

Hscat_xi = zeros( Nxy, 1 ); 
for i = 1:Nxy    
    Hscat_xi( i ) = Hscat_x_Ref( i, 1 ) + 1j * Hscat_x_Ref( i, 2 );        
end    
Hscat_xr0 = sum( Hscat_xi )  / Nxy;
Hscat_xr = reshape(Hscat_xi,[Nx,Ny]);
%Hscat_xr = sum(sum(Hscat_xr))/Nxy;
% Xref = ( sum(reflection_hx_dft) / Nxy ) / Hscat_x0;
% Hscat_x0 = Xref * Hscat_x0;

%Hscat_xr = zeros(Nx,Ny);
%FDFDHXR = atan2(imag(Hscat_xr),real(Hscat_xr))*180/pi

%[ Hscat_xr0 ] = NPointDFT( Hscat_xr, frequency, time_steps,delt);

Hscat_yi = zeros( Nxy, 1 ); 
for i = 1:Nxy    
    Hscat_yi( i ) = Hscat_y_Ref( i, 1 ) + 1j * Hscat_y_Ref( i, 2 );        
end
Hscat_yr0 = sum( Hscat_yi )  / Nxy;
Hscat_yr = reshape(Hscat_yi,[Nx,Ny]);
%Hscat_yr = sum(sum(Hscat_yr))/Nxy;
% Yref = ( sum(reflection_hy_dft) / Nxy ) / Hscat_y0;
% Hscat_y0 = Yref * Hscat_y0;    

%Hscat_yr = zeros(Nx,Ny);
%atan2(imag(Hscat_yr),real(Hscat_yr))*180/pi

%[ Hscat_yr0 ] = NPointDFT( Hscat_yr, frequency, time_steps,delt);


% Complexify transmission plane...

Escat_xi = zeros( Nxy, 1 ); 
for i = 1:Nxy      
    Escat_xi( i ) = Escat_x_Tra( i, 1 ) + 1j * Escat_x_Tra( i, 2 );        
end    
Escat_xt0 = real(sum( Escat_xi )  / Nxy);
Escat_xt = reshape(Escat_xi,[Nx,Ny]);
%Escat_xt = sum(sum(Escat_xt))/Nxy;
% Xref = ( sum(transmission_ex_dft) / Nxy ) / Escat_x0;
% Escat_x0 = Xref * Escat_x0;

%Escat_xt = zeros(Nx,Ny);
%atan2(imag(Escat_xt),real(Escat_xt))*180/pi

 %[ Escat_xt0 ] = NPointDFT( Escat_xt, frequency, time_steps,delt);

Escat_yi = zeros(Nxy, 1 ); 
for i = 1:Nxy 
    Escat_yi( i ) = Escat_y_Tra( i, 1 ) + 1j * Escat_y_Tra( i, 2 );        
end
Escat_yt0 = complex(sum( Escat_yi )  / Nxy);
Escat_yt = reshape(Escat_yi,[Nx,Ny]);
%Escat_yt = sum(sum(Escat_yt))/Nxy;
% Yref = ( sum(transmission_ey_dft) / Nxy ) / Escat_y0;
% Escat_y0 = Yref * Escat_y0;

%Escat_yt = zeros(Nx,Ny);
%FDFDEYT = atan2(imag(Escat_yt),real(Escat_yt))*180/pi

%[ Escat_yt0 ] = NPointDFT( Escat_yt, frequency, time_steps,delt);

Hscat_xi = zeros( Nxy, 1 ); 
for i = 1:Nxy
    Hscat_xi( i ) = Hscat_x_Tra( i, 1 ) + 1j * Hscat_x_Tra( i, 2 );        
end    
Hscat_xt0 = complex(sum( Hscat_xi )  / Nxy);
Hscat_xt = reshape(Hscat_xi,[Nx,Ny]);
%Hscat_xt = sum(sum(Hscat_xt))/Nxy;
% Xref = ( sum(transmission_hx_dft) / Nxy ) / Hscat_x0;
% Hinc_x0 = Xref * Hscat_x0;

%Hscat_xt = zeros(Nx,Ny);
%FDFDHXT = atan2(imag(Hscat_xt),real(Hscat_xt))*180/pi

%[ Hscat_xt0 ] = NPointDFT( Hscat_xt, frequency, time_steps,delt);

Hscat_yi = zeros( Nxy, 1 ); 
for i = 1:Nxy
    Hscat_yi( i ) = Hscat_y_Tra( i, 1 ) + 1j * Hscat_y_Tra( i, 2 );        
end
Hscat_yt0 = real(sum( Hscat_yi )  / Nxy);
Hscat_yt = reshape(Hscat_yi,[Nx,Ny]);
%Hscat_yt = sum(sum(Hscat_yt))/Nxy;
% Yref = ( sum(transmission_hy_dft) / Nxy ) / Hscat_y0;
% Hscat_y0 = Yref * Hscat_y0;    

%Hscat_yt = zeros(Nx,Ny);
%atan2(imag(Hscat_yt),real(Hscat_yt))*180/pi

%[ Hscat_yt0 ] = NPointDFT( Hscat_yt, frequency, time_steps,delt);


if ( mode == 'te ')

    % TE

    % Calculate co- and cross polarized electric and magnetic reflection fields.

    phi = atan2( abs( ky ), abs( kx ) );    

    Erp_co = Escat_xr0 * ( kx / kh ) - Escat_yr0 * ( ky / kh );

    Hrp_co = Hscat_xr0  * ( kx / kh )  + Hscat_yr0 * ( ky / kh );

    Einc = 0.5 * ( Erp_co + nu_o * Hrp_co * ( ko / kz ) );

    Eref_co = Erp_co - Einc;

    Eref_cr = Escat_xr0 * ( kx / kh )  -  Escat_yr0 * ( ky / kh );    

     % Reflection coefficients.

    Gco = Eref_co / Einc ;

    Gcr = Eref_cr / Einc ;

    % Magnitude

    Gmco = abs(Gco);

    Gmcr = abs(Gcr);

    % Phase

    Gpco = angle(Gco)*180/pi;

    Gpcr = angle(Gcr)*180/pi;


    % Calculate co- and cross polarized electric and magnetic transmission fields.

    Etra_co = Escat_xt0 * ( kx / kh ) - Escat_yt0 * ( ky / kh );

    Etra_cr = Escat_xt0 * ( kx / kh ) + Escat_yt0 * ( ky / kh );

    % Transmission coefficients.

    Tco = Etra_co / ( Einc * exp( 1j * ko * dt ) );

    Tcr = Etra_cr / ( Einc * exp( 1j * ko * dt ) );

    % Magnitude

    Tmco = abs(Tco);

    Tmcr = abs(Tcr);

    % Phase

    Tpco = angle(Tco)*180/pi;

    Tpcr = angle(Tcr)*180/pi;   


elseif ( mode == 'tm ' )

    % TM

    % Calculate co- and cross polarized electric and magnetic reflection fields.

    Erp_co = -Escat_xr0 * ( kx / kh ) - Escat_yr0 * ( ky / kh );

    Hrp_co = Hscat_xr0  * ( kx / kh ) - Hscat_yr0 * ( ky / kh );

    Hinc = 0.5 * ( Hrp_co + Erp_co * ( ko / (nu_o * kz ) ) );

    Href_co = Hrp_co - Hinc;

    Href_cr = Escat_xr0 * ( kx / kh ) + Escat_yr0 * ( ky / kh );    

     % Reflection coefficients.

    Gco = Eref_co / Einc ;

    Gcr = Eref_cr / Einc ;

    % Magnitude

    Gmco = abs(Gco);

    Gmcr = abs(Gcr);

    % Phase

    Gpco = angle(Gco)*180/pi;

    Gpcr = angle(Gcr)*180/pi;

    % Transmission plane...

    % Calculate co- and cross polarized electric and magnetic transmission fields.

    Htra_co = Hscat_xt0 * ( kx / kh ) - Hscat_yt0 * ( ky / kh );

    Htra_cr = Hscat_xt0 * ( kx / kh ) + Hscat_yt0 * ( ky / kh );

    % Transmission coefficients.

    Tco = Etra_co / ( Einc * exp( 1j * ko * dt ) );

    Tcr = Etra_cr / ( Einc * exp( 1j * ko * dt ) );

    % Magnitude

    Tmco = abs(Tco);

    Tmcr = abs(Tcr);

    % Phase

    Tpco = angle(Tco)*180/pi;

    Tpcr = angle(Tcr)*180/pi;   

elseif ( mode == 'tem' ) 


    % TEM

    % Calculate co- and cross polarized electric and magnetic reflection fields.

    phi = atan2( abs( Einc_y0 ), abs( Einc_x0 ) );    

    Erp_co = Escat_xr0 * cos( phi ) + Escat_yr0 * sin( phi );

    Hrp_co = Hscat_xr0  * sin( phi ) - Hscat_yr0 * cos( phi );

    Einc = 0.5 * ( Erp_co + nu_o * Hrp_co );

    Eref_co = Erp_co - Einc;

    Eref_cr = Escat_xr0 * sin( phi ) -  Escat_yr0 * cos( phi );    

     % Reflection coefficients.

    Gco = Eref_co / Einc ;

    Gcr = Eref_cr / Einc ;

    % Magnitude

    Gmco = abs(Gco);

    Gmcr = abs(Gcr);

    % Phase

    Gpco = angle(Gco)*180/pi;

    Gpcr = angle(Gcr)*180/pi;


    % Transmission plane...

    % Calculate co- and cross polarized electric and magnetic transmission fields.

    Etra_co = Escat_xr0 * cos( phi ) + Escat_yr0 * sin( phi );

    Etra_cr = Escat_xr0 * sin( phi ) -  Escat_yr0 * cos( phi );

    % Transmission coefficients.

    Tco = Etra_co / ( Einc * exp( 1j * ko * dt ) );

    Tcr = Etra_cr / ( Einc * exp( 1j * ko * dt ) );

    % Magnitude

    Tmco = abs(Tco);

    Tmcr = abs(Tcr);

    % Phase

    Tpco = angle(Tco)*180/pi;

    Tpcr = angle(Tcr)*180/pi;   
    
end
