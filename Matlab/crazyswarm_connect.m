function cswrm = crazyswarm_connect()
    clear;
    %ip = '192.168.1.25';
    %port = 59455; %casa
    ip = '192.168.50.170';
    port = 64183; %Robotat
    cswrm = tcpclient(ip,port);
    flush(cswrm);
end