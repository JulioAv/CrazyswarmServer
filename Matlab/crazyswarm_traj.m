function crazyswarm_traj(tcp_obj, n, x, y, z)
    %This function sends a set of points for each axis to
    %each of the Crazyflies
    %N - No. of Crazyflies used
    %x,y,z - 3 independent matrices
    if((n < 1) || (n > 10))
        error('Select a correct number of Crazyflies');
    end
    
    if((max(abs(x(:)))>1.8) || (max(abs(y(:)))>2.3) || (max(z(:))>1.6) || (min(z(:))<0))
        error('Crazyflie position out of range.');
    end
    x = x'; y = y'; z = z';
    s.len = length(x);
    s.cmd = 179; % CMD_TRAJ
    s.pld = [n; x(:);y(:);z(:)];
    write(tcp_obj, uint8(jsonencode(s)));
end