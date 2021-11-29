( define ( domain minigrid )
  ( :requirements :strips :typing :equality )
  ( :types robot room obj door )
  ( :predicates
    ( robot-in ?a - robot ?b - room )
    ( obj-in ?c - obj ?d - room )
    ( on-robot ?e - obj ?f - robot )
    ( door-on ?g - door ?h - room )
    ( open ?j - door )
    ( locked ?k - door )
    ( key ?l - obj )
    ( parcel ?m - obj )
  )

  ( :action !PICK-UP
    :parameters
    (
      ?robot - robot
      ?obj - obj
      ?c - room
    )
    :precondition
    ( and
      ( robot-in ?robot ?c )
      ( obj-in ?obj ?c )
    )
    :effect
    ( and
      ( not ( obj-in ?obj ?c ) )
      ( on-robot ?obj ?robot )
    )
  )
  
  ( :action !MOVE-TO
    :parameters
    (
      ?robot - robot
      ?c1 - room
      ?c2 - room
      ?door - door
    )
    :precondition
    ( and
      ( robot-in ?robot ?c1 )
      ( door-on ?door ?c1)
      ( door-on ?door ?c2)
      ( open ?door )
    )
    :effect
    ( and
      ( not ( robot-in ?robot ?c1 ) )
      ( robot-in ?robot ?c2 )
    )
  )

  ( :action !DROP
    :parameters
    (
      ?robot - robot
      ?obj - obj
      ?c1 - room
    )
    :precondition
    ( and
      ( robot-in ?robot ?c1 )
      ( on-robot ?obj ?robot )
    )
    :effect
    ( and      
      ( obj-in ?obj ?c1 )
      ( not ( on-robot ?obj ?robot ) )
    )
  )  

  ( :action !OPEN
    :parameters
    (
      ?robot - robot
      ?door - door
      ?c1 - room
      ?key - obj
    )
    :precondition
    ( and
      ( robot-in ?robot ?c1 )
      ( door-on ?door ?c1)
      ( locked ?door )
      ( on-robot ?key ?robot )
      ( key ?key )
    )
    :effect
    ( and      
      ( not ( locked ?door ) )
      ( open ?door )
    )
  )
)