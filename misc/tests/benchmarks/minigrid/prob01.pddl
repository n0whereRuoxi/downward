( define ( problem probname )

  ( :domain minigrid )

  ( :requirements :strips :typing :equality )

  ( :objects
    r000 - robot
    c000 - room
    c001 - room
    c002 - room
    c003 - room
    c004 - room
    d000 - door
    d001 - door
    d002 - door
    d003 - door
    d004 - door
  )

  ( :init
    ( robot-in r000 c000 )
    ( door-on d000 c000 )
    ( door-on d000 c001 )
    ( door-on d001 c001 )
    ( door-on d001 c002 )
    ( door-on d002 c002 )
    ( door-on d002 c003 )
    ( door-on d003 c003 )
    ( door-on d003 c004 )
    ( door-on d004 c004 )
    ( door-on d004 c000 )
    ( open d000 )
    ( open d001 )
    ( open d002 )
    ( open d003 )
    ( open d004 )
  )

  ( :goal
    ( and
      ( robot-in r000 c003 )
    )
  )
)

