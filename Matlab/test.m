cswrm = crazyswarm_connect()

x_y_z = [0.1 0.2 0.3];
crazyflie_send_to(cswrm, 5,x_y_z)
%crazyflie_traj(cswrm,n,x',y',z')
%%
crazyswarm_test(cswrm)