# CrazyswarmServer
Crazyswarm Server documentation for Robotat comunication.
![Crazyswarm-Robotat comunication.](https://github.com/JulioAv/CrazyswarmServer/blob/main/Conexiones.png)

Steps:<br />
-Download the Crazyswarm-Robotat functions on a different computer and place them in a Matlab folder.<br />
-Initialize Optitrack cameras and calibrate them with Motive.<br />
-Place the desired number of Crazyflies in the Robotat.<br />
-Initialize Crazyswarm in ROS2 (ensure that the computer is connected to the router and that the antenna is connected to the computer).<br />
-Initialize the Crazyswarm-Robotat server in ROS2. Ensure that the server is listening for new connections. If necessary, initialize the Robotat server.<br />
-Create a new TCPClient object in Matlab using the crazyswarm_connect() function. If needed, another TCPClient object for the Robotat server can be created with the robotat_connect() function.<br />
-Use the desired functions to control the Crazyflies. If a trajectory is intended to be implemented, use the Trajectory code to generate a vector of position sequences based on the number of Crazyflies, duration, and the trajectory geometry.<br />
