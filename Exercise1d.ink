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




-> seashore

== seashore ==
You are sitting on the beach. Trying to get a summer tan!

It is { advance_time() }

// {&It's Morning| It's Noon| It's Evening}

+ [Stroll down the beach.] -> beach2
-> DONE

== beach2 ==
This is further down the beach, but you suddenly spot a flock of seagulls...

It is { advance_time() }
* { time == 1 } [You run full speed at a flock of seagulls.] -> seagulls
+ [Stroll down the beach.] -> seagulls


== seagulls ==
You scare them away!
-> beach3

+ [Stroll down the beach.] -> beach3


== beach3 ==
This is further down the beach, but you suddenly notice a crab... 

It is { advance_time() }
* { time == 1 } [You sneak up on a Pacific mole crab.] -> crabs
+ [Stroll down the beach.] -> beachbar

== crabs ==
It pinches you and the crab gets away!
-> beachbar


== beachbar ==
You are further down the beach and see a beachbar.

It is { advance_time() }
+ [Enter the bar and get a quick bite to eat!] -> bar

== bar ==
That food was really good, its about time I head back.
-> condo
+ [Stroll down the beach.] -> condo


== condo ==
You made it back to the condo!
-> DONE


== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "30 minutes have past."
        
        - time == 1:
            ~ return "45 minutes have past"
        
        - time == 2:
            ~ return "An hour has past"
    
    }
    
        
    ~ return time
    
    
    
