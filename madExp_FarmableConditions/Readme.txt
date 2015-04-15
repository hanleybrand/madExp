In this experiment I wanted to know if it is possible to make certain conditions for a plant to grow. Unfortunately the farming code is part of the backend. So it will need more experimentation to see how much it can be manipulated [forcing frame change to modify "Stage" ? ]

The code which check for the liquid
	if world.liquidAt({pos[1], pos[2]+2}) == nil then

This method is a really a poor method of implementation. What happens is if there is no liquid at this location, it will kill the entity. You can be more specific by returning the table and seeing which liquid it is and then smashing it also. It really is upto you on how to implement it, this is just one of the most basic methods. 

==
Experiment #2 - automatoseed
Well here I wanted to make things more interesting and give conditions to other seeds so here I made automatoseeds require it to be placed on iron blocks. 
I also wanted it to "consume" the block when removed. 
==
Experiment #3 - wheatseed
In this experiment I wanted plants to actually drink water. This would partially inhibit massive farms due to a requirement of a constant supply of water.
Though I wanted to take it one step further and make each plant require a specific liquid. Still a work in progress.
==

Other Notes: 
entity.smash() --> will destroy the object 
entity.break() --> will break the object and return the item.