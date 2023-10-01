%Universidad del Valle de Guatemala
%Implementación de trayectorias para Crazyswarm
%Julio Avila - 19285
%% Trayectoria 1: Círculo a la misma altura
%close all;
tf = 20; R = 1; n = 1; h = 1; dt = 1;
%=================================================================
t = 0.1:dt:tf; x=zeros(n,tf/dt); y=zeros(n,tf/dt);
z=h*ones(n,tf/dt);
for k=0:n-1
    x(k+1,:) = R*cos(t+k*2*pi/n);
    y(k+1,:) = R*sin(t+k*2*pi/n);
end

%=================================================================
figure(1);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2.4*[-1, 1]);
grid on;
hold on;

for k=1:n
    if(k==1)
        r = 0.03;
    else
        r = 0.01;
    end
    c(k) = circle(x(k),y(k),r);
end

for k=1:tf/dt
    for i=1:n
        c(i).Position(1:2) = [x(i,k), y(i,k)];
    end
    pause(dt);
end

%% Trayectoria 2: 3 Círculos a distintas alturas
close all;
tf = 10; R_max = 1; n = 10; h_max = 1.5; dt = 0.1;
%=================================================================
t = 0.1:dt:tf; x=zeros(n,tf/dt); y=zeros(n,tf/dt); z=zeros(n,tf/dt);

z(1,:) = h_max; cir_1 = fix(2*(n-1)/3);
for k=1:cir_1+2
    x(k+1,:) = R_max*cos(t+k*2*pi/cir_1);
    y(k+1,:) = R_max*sin(t+k*2*pi/cir_1);
    z(k+1,:) = h_max/3;
end

for k=cir_1+1:n-1
    x(k+1,:) = R_max/2*cos(t+k*2*pi/(n-1-cir_1));
    y(k+1,:) = R_max/2*sin(t+k*2*pi/(n-1-cir_1));
    z(k+1,:) = 2*h_max/3;
end

%=================================================================
figure;
subplot(1,2,1);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2.4*[-1, 1]);
grid on;
hold on;

for k=1:n
    c(k) = circle(x(k),y(k),r);
end

subplot(1,2,2);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2*[0, 1]);
grid on;
hold on;

for k=n+1:2*n
    c(k) = circle(x(k),y(k),r);
end

for k=1:tf/dt
    for i=1:n
        c(i).Position(1:2) = [x(i,k), y(i,k)];
    end
    for i=n+1:2*n
        c(i).Position(1:2) = [x(i-n,k), z(i-n,k)];
    end
    pause(dt);
end

%% Trayectoria 3: Función seno
close all;
tf = 15; n = 2; dt = 1;
%=================================================================
t = 0.1:dt:tf; x=zeros(n,tf/dt); y=zeros(n,tf/dt); z=zeros(n,tf/dt);

d = 2/(n-1);
for k=0:n-1
    z(k+1,:) = 0.6*sin(t+k)+1;
end

for k=0:n-1
    y(k+1,:) = -1+k*d;
end

figure;
r = 0.01;
xlim(2.4*[-1, 1]);
ylim(2*[0, 1]);
grid on;
hold on;

for k=1:n
    c(k) = circle(x(k),y(k),r);
end

for k=1:tf/dt
    for i=1:n
        c(i).Position(1:2) = [y(i,k), z(i,k)];
    end
    pause(dt);
end

%% Trayectoria 4: Círculos oscilando
close all;
tf = 10; R_max = 1.5; n = 2; A_max = 0.5; dt = 1;
%=================================================================
t = 0.1:dt:tf; x=zeros(n,tf/dt); y=zeros(n,tf/dt); z=zeros(n,tf/dt);

cir_1 = fix(2*(n-1)/3);

z(1,:) = A_max*sin(t)+0.75;
for k=1:cir_1+2
    x(k+1,:) = R_max*cos(k*2*pi/cir_1);
    y(k+1,:) = R_max*sin(k*2*pi/cir_1);
    z(k+1,:) = A_max*sin(t+2*pi/3)+1;
end

for k=cir_1+1:n-1
    x(k+1,:) = R_max/2*cos(k*2*pi/(n-1-cir_1));
    y(k+1,:) = R_max/2*sin(k*2*pi/(n-1-cir_1));
    z(k+1,:) = A_max*sin(t+2*pi/6)+1;
end


figure;
r = 0.01;
xlim(2.4*[-1, 1]);
ylim(2*[0, 1]);
grid on;
hold on;

for k=1:n
    c(k) = circle(x(k),y(k),r);
end

for k=1:tf/dt
    for i=1:n
        c(i).Position(1:2) = [y(i,k), z(i,k)];
    end
    pause(dt);
end

%% Trayectoria 5: Círculos oscilando y girando
close all;
tf = 10; R_max = 1.5; n = 10; A_max = 0.5; dt = 1;
%=================================================================
t = 0.1:dt:tf; x=zeros(n,tf/dt); y=zeros(n,tf/dt); z=zeros(n,tf/dt);

cir_1 = fix(2*(n-1)/3);

z(1,:) = A_max*sin(t)+0.75;
for k=1:cir_1+2
    x(k+1,:) = R_max*cos(t+k*2*pi/cir_1);
    y(k+1,:) = R_max*sin(t+k*2*pi/cir_1);
    z(k+1,:) = A_max*sin(t+2*pi/3)+0.75;
end

for k=cir_1+1:n-1
    x(k+1,:) = R_max/2*cos(t+k*2*pi/(n-1-cir_1));
    y(k+1,:) = R_max/2*sin(t+k*2*pi/(n-1-cir_1));
    z(k+1,:) = A_max*sin(t+2*pi/6)+0.75;
end


figure;
subplot(1,2,1);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2.4*[-1, 1]);
grid on;
hold on;

for k=1:n
    c(k) = circle(x(k),y(k),r);
end

subplot(1,2,2);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2*[0, 1]);
grid on;
hold on;

for k=n+1:2*n
    c(k) = circle(x(k),y(k),r);
end

for k=1:tf/dt
    for i=1:n
        c(i).Position(1:2) = [x(i,k), y(i,k)];
    end
    for i=n+1:2*n
        c(i).Position(1:2) = [x(i-n,k), z(i-n,k)];
    end
    pause(dt);
end

%% Trayectoria 6: Paraboloide senoidal
close all;
tf = 10; R_max = 1; n = 1; A_max = 0.5; dt = 0.1;
%=================================================================
t = 0.1:dt:tf; x=zeros(n,tf/dt); y=zeros(n,tf/dt); z=zeros(n,tf/dt);

for k=0:n-1
    x(k+1,:) = R_max*cos(t+k*2*pi/n);
    y(k+1,:) = R_max*sin(t+k*2*pi/n);
    z(k+1,:) = A_max*x(k+1,:).^2+0.5;
end

figure(1);
subplot(2,2,4);
xlim(1.9*[-1, 1]);
ylim(2*[0, 1]);
zlim(2*[0 1]);
xlabel('$x(m)$', 'Interpreter', 'latex', 'FontSize', 16);
ylabel('$z(m)$', 'Interpreter', 'latex', 'FontSize', 16);
plot3(x(1,:),y(1,:),z(1,:));
grid minor;
hold on;

subplot(1,2,1);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2.4*[-1, 1]);
xlabel('$x(m)$', 'Interpreter', 'latex', 'FontSize', 16);
ylabel('$y(m)$', 'Interpreter', 'latex', 'FontSize', 16);
grid minor;
hold on;

for k=1:n
    c(k) = circle(x(k),y(k),r);
end

subplot(2,2,2);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2*[0, 1]);
xlabel('$x(m)$', 'Interpreter', 'latex', 'FontSize', 16);
ylabel('$z(m)$', 'Interpreter', 'latex', 'FontSize', 16);
grid minor;
hold on;

for k=n+1:2*n
    c(k) = circle(x(k),y(k),r);
end

for k=1:tf/dt
    for i=1:n
        c(i).Position(1:2) = [x(i,k), y(i,k)];
    end
    for i=n+1:2*n
        c(i).Position(1:2) = [x(i-n,k), z(i-n,k)];
    end
    pause(dt);
end
%% Trayectoria 7: Elipse inclinada  
close all;
tf = 10; R_max = 1.5; n = 1; A_max = 0.2; dt = 0.1;
%=================================================================
t = 0.1:dt:tf; x=zeros(n,tf/dt); y=zeros(n,tf/dt); z=zeros(n,tf/dt);

for k=0:n-1
    x(k+1,:) = 0.75*R_max*cos(t+k*2*pi/n);
    y(k+1,:) = R_max*sin(t+k*2*pi/n);
    z(k+1,:) = -1.25*A_max*y(k+1,:)+1;
end

figure(1);
subplot(1,2,1);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2.4*[-1, 1]);
grid on;
hold on;

for k=1:n
    c(k) = circle(x(k),y(k),r);
end

subplot(1,2,2);
r = 0.01;
xlim(1.9*[-1, 1]);
ylim(2*[0, 1]);
grid on;
hold on;

for k=n+1:2*n
    c(k) = circle(x(k),y(k),r);
end

for k=1:tf/dt
    for i=1:n
        c(i).Position(1:2) = [x(i,k), y(i,k)];
    end
    for i=n+1:2*n
        c(i).Position(1:2) = [y(i-n,k), z(i-n,k)];
    end
    pause(dt);
end