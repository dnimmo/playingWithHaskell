doubleMe x = x * 2

doubleUs x y = doubleMe x + doubleMe y -- Function composition

doubleSmallNumber x = if x > 100
                        then x
                        else x * 2 -- 'else' is compulsory for if statements in Haskell