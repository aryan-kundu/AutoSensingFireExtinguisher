# Team Details<br>
<details>
  <summary>Detail</summary>

  > Semester: 3rd Sem B. Tech. CSE

  > Section: S2

  > Member-1: Aditya Goyal, 221CS202, adityagoyal.221cs202@nitk.edu.in


  > Member-2: Aryan, 221CS210, aryan.221cs210@nitk.edu.in

  > Member-3: Rishabh, 221CS229, mahorrishabhjagdish.221cs229@nitk.edu.in,

</details>

# Abstract<br>

<details>
  <summary>Detail</summary>
This is a project developed to help make sure that fire in a specified place is extinguished without having to install water pipes everywhere, and will show you the exit path as per the fire in the area.<br>

MINI-PROJECt “Design and implementation in logisIM & HDL”<br>





The "Auto-Sensing Fire Extinguisher" is a mini-project designed to enhance fire safety<br>
by automatically detecting and suppressing fires in their early stages. This project<br>
leverages a combination of sensors and logic gates to create a responsive and efficient<br>
fire extinguishing system. In this abstract, we will outline the key components required<br>
and the project's functionality.<br>
Components Required:<br>
1. Heat Sensors: Heat detectors are vital components for fire detection. They<br>
continuously monitor the environment for changes in temperature and the<br>
presence of fire.
2. Logic Gates: Various logic gates like AND, OR, and NOT are employed to<br>
create decision-making algorithms. These gates combine sensor inputs and<br>
control the activation of the fire extinguishing mechanism.<br>
3. Fire Extinguishing Mechanism: This could include a sprinkler system, foam<br>
dispenser, or any other method for delivering the extinguishing agent.<br>
4. Power Supply: A stable power supply is essential to ensure uninterrupted<br>
operation.<br>
</details>

 
# Working:<br>
<details>
  <summary>Detail</summary>
1. Fire Detection: The heat sensors constantly monitor the environment. If<br>
any sensor detects a significant increase in temperature or the presence<br>
of smoke, it triggers an alarm signal.<br>
2. Signal Processing: The microcontroller processes the alarm signal and<br>
feeds it into a logic gate-based decision-making system.<br>
3. Logic-Based Decision: The logic gates analyze the sensor data. For<br>
example, an AND gate might require both smoke and heat sensors to<br>
be triggered before activating the extinguishing mechanism to reduce<br>
false alarms.<br>
4. Extinguishing Activation: If the logic gates determine that there is a<br>
fire, they activate the fire extinguishing mechanism, which suppresses<br>
the fire before it can escalate.<br>
5. Status Indication: The system can incorporate status indicators like LED<br>
lights or notifications to inform users about its current state.<br>
The Auto-Sensing Fire Extinguisher mini-project combines sensor technology<br>
and logic gate-based decision-making to create a responsive and effective fire<br>
safety solution. This system has the potential to save lives and property by<br>
detecting and suppressing fires in their early stages, preventing them from<br>
becoming catastrophic incidents.The primary motivation behind creating an auto-sensing fire extinguisher is to<br>
enhance fire safety. Fires can start unexpectedly and spread rapidly, posing a<br>
significant risk to people and property. An auto-sensing fire extinguisher can<br>
quickly detect the presence of a fire and take immediate action to suppress it,<br>
reducing the potential for injury and damage.<br>






# Working Explained….<br>

Implementing a project where a fire extinguisher robot navigates to destinations based on fire sensors and prioritizes reaching the secondary matrix first, if applicable, involves <br>several components working together. Below is a high-level description of how this project would work:<br>
Components:<br>
	Fire Extinguisher Robot: This is a mobile robot equipped with sensors, a fire extinguisher, and a navigation system.<br>
	Matrix Handling Module: This module determines whether a given destination is inside the secondary matrix.<br>
	Destination Queue Module: Maintains a queue of destinations triggered by fire sensors.<br>
	Path Generation Module: Generates a path from the current position to a given destination using a path-finding algorithm.<br>
	State Machine Module: Controls the robot's movement and actions based on the current state.<br>
Overview of the Project:<br>
	  1. Initialization:<br>
Initialize the robot's position to (0, 0).<br>
Define the primary and secondary matrices.<br>
	  2. Fire Sensors:<br>
Monitor the state of fire sensors.<br>
When a fire is detected, add the corresponding destination coordinates to the destination queue.<br>
	  3. State Machine:<br>
The state machine controls the robot's behavior.<br>
States could include: IDLE, MOVE_TO_DESTINATION, EXTINGUISH_FIRE, and RETURN_TO_ORIGIN.<br>
	  4. Path Generation:<br>
When in the MOVE_TO_DESTINATION state, use a path-finding algorithm to generate a path from the current position to the next destination in the queue.<br>
Update the robot's position accordingly.<br>
	  5. Matrix Handling:<br>
Check if the destination is within the secondary matrix.<br>
If so, prioritize reaching it before other destinations.<br>
	  6. Extinguish Fire:<br>
When the robot reaches a destination with a fire sensor, trigger the fire extinguisher to extinguish the fire.<br>
Update the state machine accordingly.<br>
	  7. Destination Queue Management:<br>
Remove destinations from the queue as they are reached.<br>
If a destination inside the secondary matrix is added, move it to the front of the queue.<br>
	  8. Return to Origin:<br>
After all destinations have been visited, return to the origin (0, 0).<br>
Use the path-finding algorithm to generate a path for the return journey.<br>
	  9. Repeat:<br>
Continuously monitor fire sensors and add new destinations to the queue when fires are detected.<br>
  10. Implementation Considerations:<br>
The path-finding algorithm will depend on the layout of the matrix and may use Dijkstra's, A*, or another suitable algorithm.<br>
The movement of the robot can be simulated using motor control and direction commands.<br>
The state machine will dictate the robot's actions, such as moving, extinguishing fires, and returning.<br>

 
  
# ASSUMPTIONS:<br>

To ensure the smoother functioning of the fire extinguisher robot in the described project, you should make several key assumptions and work to ensure they are met. These assumptions <br>are critical for the success of the robot's operation. Here are some key assumptions:<br>
	  1. Robot Mobility:<br>
The robot is assumed to have the physical capabilities and mobility to navigate within the environment, including movement, turning, and stopping.<br>
	 2. Reliable Hardware:<br>
The robot's hardware components, such as motors, sensors, and controllers, are in good working condition and are reliable.<br>
 	  3. Sensors Accuracy:<br>
Assumption that the sensors, including fire sensors and obstacle detection sensors, are accurate and provide reliable data.<br>
	  4. Communication Reliability:<br>
The robot's communication systems are reliable, allowing it to receive commands, transmit data, and communicate with other devices as needed.<br>
	  5. Obstacle Avoidance:<br>
The robot is capable of detecting obstacles in its path and can effectively navigate around them to prevent collisions.<br>
	  6. Power Supply:<br>
Continuous and reliable power supply is available to ensure the robot's operation is not disrupted due to power-related issues.<br>
  	7. Navigation Algorithms:<br>
The navigation and path-finding algorithms used by the robot are well-designed and suitable for the environment, allowing it to find optimal paths to destinations.<br>
	  8. Environment Stability:<br>
The environment in which the robot operates remains stable, with no unexpected structural changes that could impact its movements.<br>
	  9. Regular Maintenance:<br>
Assumption that the robot is subject to regular maintenance to address wear and tear, prevent malfunctions, and ensure its reliability.<br>
	  10. Safety Protocols:<br>
Safety protocols are in place to prevent accidents and ensure the safety of both the robot and the surrounding environment.<br>
	  11. Data Integrity:<br>
The data used for navigation, such as the layout of the matrix, is accurate and up-to-date to avoid errors in path planning.<br>
	  12. Realistic Fire Detection:<br>
Fire sensors accurately detect real fires and do not produce frequent false alarms.<br>
    13. Communication with Control Center:<br>
Assumption that the robot can effectively communicate with a control center or operator for remote monitoring and control.<br>
	  14. Stable Network Connectivity:<br>
If the robot relies on network connectivity for communication or remote control, it is assumed that the network connection is stable and reliable.<br>
	    15. Minimal Interference:<br>
Assumption that there is minimal interference from external factors, such as electromagnetic interference, that could affect the robot's electronic components.<br>
	  16. Safety Measures in Case of Failure:<br>
Appropriate safety measures and fail-safes are in place to handle unexpected robot behavior or emergencies.<br>

 
# References:<br>

	1. Verilog HDL Tutorials:<br>
Learn Verilog<br>
	 2. FIFO Queue Implementation in Verilog:<br>
ASIC World<br>
	 3. Robotics Path Planning:<br>
Robotics Learning<br>
	 4. State Machines in Verilog:<br>
FPGA4fun<br>
	 5. Robot Behavior Control Algorithms:<br>
Robotics Institute, Carnegie Mellon University<br>
	 6. Fire Sensor Integration in Robotics:<br>
RobotShop<br>
	 7. Logisim Simulation:<br>
Logisim Official Website<br>
	 8. Entity-Relationship Diagram (ERD) Resources:<br>
Lucidchart ER Diagram Symbols<br>
	 9. Functional Table Design:<br>
Khan Academy Computer Programming<br>
	 10. Robotics Basics:<br>
Robotics Academy, Carnegie Mellon University<br>













# FUNCTIONAL TABLE: <br>

![image](https://github.com/aryan-kundu/AutoSensingFireExtinguisher/assets/149221850/ee802a5c-d84e-4cc7-995f-338fc5d59929)
<br>


# How the Code Works?<br>


![image](https://github.com/aryan-kundu/AutoSensingFireExtinguisher/assets/149221850/749d49fe-9080-4800-905b-78b71381e5a3)
<br>
</details>

# Logisim Circuit Diagram:<br>
<details>
  <summary>Detail</summary>
	<br>


Logisim Circuit Main<br><br>
![rynkundu](https://github.com/aryan-kundu/AutoSensingFireExtinguisher/assets/149221850/7c77760d-2b9b-4688-b4a0-7954a81dff73)



Logisim Circuit ryn<br><br>
![test1_2](https://github.com/aryan-kundu/AutoSensingFireExtinguisher/assets/149221850/1189f529-243f-4141-bd27-cadde022ae6f)


Logisim Circuit ryn2<br><br>
![test1_3](https://github.com/aryan-kundu/AutoSensingFireExtinguisher/assets/149221850/0bab88d6-f920-4600-a1a3-d5f8108974cc)


Logisim Circuit ryn6<br><br>
![test1_4](https://github.com/aryan-kundu/AutoSensingFireExtinguisher/assets/149221850/2c608463-67fb-4f7c-bc46-e0475844b183)
</details>

# Verilog Code:<br>
<details>
  <summary>Detail</summary>
	https://github.com/aryan-kundu/AutoSensingFireExtinguisher/tree/main/Verliog
</details>



