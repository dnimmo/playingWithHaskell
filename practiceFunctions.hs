doubleMe x = x * 2 -- Note, functions can't begin with capital letters

doubleUs x y = doubleMe x + doubleMe y -- Function composition

doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x -- 'else' is compulsory for if statements in Haskell
                        
doubleSmallNumber' x = (doubleSmallNumber x) + 1