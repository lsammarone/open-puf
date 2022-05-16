open-puf 
Luke Sammarone
Xiaolin Wu
EE 372 Spring 2022
Stanford University

In the design folder, the unit cell symbol and schematic (without the test mode pin) is singlestage.sym and singlestage.sch. In each unit cell (singlestage.sch), it uses the other two symbols (demux2-1.sym and mux2-1.sym). Demux2-1.sch and demux2-1.sym are the transmission gate based demux in the unit cell. Mux2-1.sch and mux2-1.sym are the transmission gate based mux in the unit cell. The toplevel schematic for 32bit PUF (without the test mode pin) is BR32.sch. 
The singlestage_floattm is the unit cell with the test mode pin.
