In this experiment I wanted to know if it is possible to make certain conditions for a plant to grow. Unfortunately the farming code is part of the backend. So it will need more experimentation to see how much it can be manipulated [forcing frame change to modify "Stage" ? ]

The code which check for the liquid
	if world.liquidAt({pos[1], pos[2]+2}) == nil then

This method is a really a poor method of implementation. What happens is if there is no liquid at this location, it will kill the entity. You can be more specific by returning the table and seeing which liquid it is and then smashing it also. It really is upto you on how to implement it, this is just one of the most basic methods. 
	
Other Notes: 
entity.smash() --> will destroy the object 
entity.break() --> will break the object and return the item.