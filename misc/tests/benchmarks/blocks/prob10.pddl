( define ( problem probname )
  ( :domain blocks4 )
  ( :requirements :strips :typing :equality )
  ( :objects
    b000 - block
    b001 - block
    b002 - block
    b003 - block
  )
  ( :init
    ( on-table b000 )
    ( on b001 b000 )
    ( on b002 b001 )
    ( clear b002 )
    ( holding b003 )
  )
  ( :goal
    ( and
      ( on-table b001 )
      ( clear b001 )
    )
  )
)

