( define ( problem probname )
  ( :domain blocks4 )
  ( :requirements :strips :typing :equality )
  ( :objects
    b000 - block
    b001 - block
  )
  ( :init
    ( on-table b000 )
    ( on b001 b000 )
    ( clear b001 )
    ( hand-empty )
  )
  ( :goal
    ( and
      ( on-table b001 )
      ( on b000 b001 )
      ( clear b000 )
      ( hand-empty )
    )
  )
)

