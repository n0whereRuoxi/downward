( define ( problem probname )
  ( :domain blocks4 )
  ( :requirements :strips :typing :equality )
  ( :objects
    b000 - block
    b001 - block
    b002 - block
  )
  ( :init
    ( on-table b000 )
    ( on b001 b000 )
    ( clear b001 )
    ( holding b001)
  )
  ( :goal
    ( and
      ( on-table b001 )
      ( clear b001 )
    )
  )
)

