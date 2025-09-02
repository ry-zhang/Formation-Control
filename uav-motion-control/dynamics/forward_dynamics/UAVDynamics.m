function dY=UAVDynamics(Y,n_x,n_z)
    x=Y(1);
    y=Y(2);
    z=Y(3);
    V=Y(4);
    gamma=Y(5);
    chi=Y(6);
    phi=Y(7);

    g=9.81;
    
    V_dot = g*(n_x - sin(gamma));
    gamma_dot=g*(n_z*cos(phi)-cos(gamma))/V;
    chi_dot=-g*n_z*sin(phi)/(V*cos(gamma));
    x_dot=V*cos(gamma)*cos(chi);
    y_dot=-V*cos(gamma)*sin(chi);
    z_dot=V*sin(gamma);
    
    dY=[x_dot;y_dot;z_dot;V_dot;gamma_dot;chi_dot;phi_dot];
    
    
end