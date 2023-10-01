load('Prueba_1.mat');
Y_test = Y(816:1560);
X_test = X(816:1560);
Z_test = Z(816:1560);
plot3(X_test,Z_test,Y_test)
grid minor;

xlim(1.9*[-1, 1]);
ylim(2.4*[-1, 1]);

zlim([0.4 1]);
xlabel('$x(m)$', 'Interpreter', 'latex', 'FontSize', 16);
ylabel('$y(m)$', 'Interpreter', 'latex', 'FontSize', 16);
zlabel('$z(m)$', 'Interpreter', 'latex', 'FontSize', 16);

%% =========================================================
load('Prueba_3.mat');
Y_test = Y(884:2149);
X_test = X(884:2149);
Z_test = Z(884:2149);
figure(2);
plot3(X_test,Z_test,Y_test)
grid minor;

xlim(1.9*[-1, 1]);
ylim(2.4*[-1, 1]);

zlim(1.5*[0 1]);
xlabel('$x(m)$', 'Interpreter', 'latex', 'FontSize', 16);
ylabel('$y(m)$', 'Interpreter', 'latex', 'FontSize', 16);
zlabel('$z(m)$', 'Interpreter', 'latex', 'FontSize', 16);

figure(3);
plot(X_test); hold on;
plot(Y_test); plot(Z_test);
legend('Dx','Dy','Dz');


%% =======================================================
Dx = zeros(length(X_test)-1,1); dt = 0.0083;
for i=2:length(Dx)
    Dx(i) = (X_test(i+1)-X_test(i-1))/(2*dt);
end
%Dx(966) = -1.03458; %Prueba3

Dy = zeros(length(X_test)-1,1); 
for i=2:length(Dy)
    Dy(i) = (Z_test(i+1)-Z_test(i-1))/(2*dt);
end
%Dy(966) = 0.414;

Dz = zeros(length(X_test)-1,1);
for i=2:length(Dz)
    %Dz(i) = (Y_test(i+1)-Y_test(i-1))/(2*dt);
    Dz(i) = (Y_test(i+1)-Y_test(i-1))/(2*dt);
end
%Dz(966) = -0.1136;

figure(4);
plot(Dx); hold on;
plot(Dy); plot(Dz);
legend('Dx','Dy','Dz');