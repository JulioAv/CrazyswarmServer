% crazyflie_send_to(tcp,3,[0 0.8 0.5])
% pause(2);
crazyswarm_goto(tcp,1,[0 0 1.01])
pause(2);
crazyswarm_goto(tcp,2,[0 0.8 0.5])
pause(2);
%crazyswarm_goto(tcp,3,[0 0.8 0.5])
%pause(2);

% crazyswarm_goto(tcp,1,[0.5 -0.5 1.0])
% pause(2);
% crazyflie_send_to(tcp,2,[-0.5 0.8 1.0])
% pause(2);

% crazyswarm_goto(tcp,1,[0 0.1 1.0])
% pause(2);
% crazyflie_send_to(tcp,2,[0 0.8 1.0])
% pause(2);
crazyswarm_land(tcp,[1,2])
pause(2);
crazyswarm_land(tcp,1)
pause(2);
crazyswarm_land(tcp,2)
pause(2);