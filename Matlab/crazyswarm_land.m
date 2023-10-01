function crazyswarm_land(tcp_obj, n)
%This code sends the desired position to a specific
%crazyflie
    %tcp_obj = Robotat tcp object
    %crf_no = Crazyflie number (1-15)
    %x_y_z = Crazyflie position
    if((min(n) < 1) && (max(n) > 10))
        error('Selected Crazyflie does not exist.');
    end

    s.len = length(n);
    s.cmd = 180; % CMD_GOTO
    s.pld = n-1;
    write(tcp_obj, uint8(jsonencode(s)));
end