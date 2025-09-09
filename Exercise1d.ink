/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night

VAR tide = 1


-> seashore

== seashore ==
You are sitting on the beach. 

It is {advance_time() }

It is {advance_tide() }

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time() }

It is {advance_tide() }
* {tide == 0} [Go look at the crabs] -> crabs
* {time == 1} [Pick up some shells] -> shells
+ [Stroll back up the beach] -> seashore
+ [Continue down the beach] -> beach3

== shells ==
You pick up the shells
-> beach2

== crabs ==
There are a few crabs coming out of the sand as the low tide sets in.
-> beach2

== beach3 ==
This is the end of the beach.

* {time == 2} [Go home and sleep] -> home
+ [Stroll back up the beach] -> beach2

== home ==
You're very tired and head to bed.
-> END


== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
== function advance_tide ==
    
    ~ tide = tide + 1
    
    {
        - tide > 2:
            ~ tide = 0
    }
    
    {
        - tide == 0:
            ~ return "low tide"
            
        - tide == 1:
            ~ return "medium tide"
            
        - tide == 2:
            ~ return "high tide"
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    