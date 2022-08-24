function  out=EY_Naka(B_S,eat,P_R,P_sat,lambda_r,m,rou_r_2)
error_Y=1E-2
temp_Y=0
E_Y=0
w_k=1;
k=0;
while w_k==1
    k=k+1;
    a1=k;    
    %
    g_out=pdf_OCSI_Naka(B_S./(eat.*P_R),P_sat./(eat.*P_R),lambda_r,m,rou_r_2,k)
    E_Y=E_Y+a1.*g_out;
    if abs(E_Y-temp_Y)./E_Y<error_Y
        w_k=0;
    else
        %E_Y-temp_Y
        temp_Y=E_Y
    end
end
out=E_Y