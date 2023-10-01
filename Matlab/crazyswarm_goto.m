function crazyswarm_goto(tcp_obj, crf_no, x_y_z)
%This code sends the desired position to a specific
%crazyflie
    %tcp_obj = Robotat tcp object
    %crf_no = Crazyflie number (1-15)
    %x_y_z = Crazyflie position
    if((crf_no < 1) && (crf_no > 10))
        error('Selected Crazyflie does not exist.');
    end
    
    x=x_y_z(1); y=x_y_z(2); z=x_y_z(3);
    if((abs(x)>1.8) || (abs(y)>2.3) || (z>1.6) || (z<0))
        error('Crazyflie position out of range.');
    end

    s.cmd = 178; % CMD_GOTO
    s.pld = [crf_no-1,x_y_z];
    write(tcp_obj, uint8(jsonencode(s)));
    pause(1);
end