list = [1,2,3,4]  -- 'something = something' in a script is the same as using 'let something = something' in the interpereter

newList = list ++ [5] -- concatenate lists with '++'. Be aware that when you do this, the interpereter will need to walk through every item in the left-hand side first. 

newerList = 0 : newList -- use ':' to add something to the start of a list. This is instantaneous.

-- note: '[1,2,3]' is actually interpereted as 1 : 2 : 3 

letterB = "ABCDEF" !! 1 -- use '!!' to get an item out of a list. Lists are 0-indexed.

listOfLists = [[1,2,3], [4,5,6]] -- lists can only contain items of the same type, but that type can be lists

-- List comparisons can be done if the types contained can be compared. Bit weird though: [3,2,1] > [2, 1, 100] because the comparison is done per index first, and "true" is returned straight away because left[0] > right[0] (3 > 2)

-- "head" returns the first element
-- eg: "head [1,2,3,4]" will return "1"

-- "tail" returns all but the first element
-- eg: "tail [1,2,3,4]" will return "[2,3,4]"

-- "last" returns the last element
-- eg: "last [1,2,3,4]" will return "4"

-- "init" returns all but the last element
-- eg: "init [1,2,3,4]" will return "[1,2,3]"

-- Note: Errors on head/tail/last/init will not be caught at compile time, so make sure you're not trying to access something that doesn't exist! eg: "head []" will return an 'empty list' exception

-- "length" returns the length of a list
-- eg: "length [2,4,6,8]" will return "4"

-- "null" returns true if a list is empty, and false if not
-- eg: "null []" will return true. "null [1,2]" will return false.
-- note: use this to check for empty lists! Rather than "myList == []", use "null myList"

-- "reverse" reverses a list, unsurprisingly
-- eg: "reverse [4,3,2,1]" will return "[1,2,3,4]"

-- "take" takes a specified number of items from the beginning of a list
-- eg: "take 3 [1,2,3,4,5,6]" will return "[1,2,3]"
-- "take 0 [1,2,3] will return []"
-- "take 5 [1,2,3] will return [1,2,3]

-- "drop" does the same as "take", but removes the specified number of elements from the start of the list and returns what's left
-- eg: "drop 3 [1,2,3,4,5,6]" will return "[4,5,6]"

-- "maximum" can be used on a list that can be ordered, and returns the highest thing
-- eg: "maximum [1,5,8,3,4,6,2,5]" will return "8"

-- "minimum" does the opposite of "maximum"

-- "sum" takes a list of numbers and returns the sum of all of them
-- eg: "sum [1,2,3]" returns 6

-- "product" does the same as "sum" but returns the product
-- eg: "product [6,2,1,2]" returns "24"

-- "elem" is used to check if a specified thing is in a list
-- eg: "elem 4 [1,2,3,4]"  returns true
-- eg: "elem 4 [1,2,3]" retusn false
-- note: Probably more sensible to use this as an infix function, as follows: "4 `elem` [1,2,3,4]"

-- If something can be enumerated, Haskell can do it for you!
-- eg: "[1..20]" will return a list of every number from 1 to 20
-- note: You can add steps here too: "[2, 4..10]" will give you "[2,4,6,8,10]"
-- note: You probably don't want to use floating point numbers in ranges
-- "[a..z]" will give you every letter of the alphabet in a list. "[A..Z]" will do the same but with capitals

-- "cycle" creates an infinite list out of whatever you give it. So "cycle [1,2]" will give you [1,2,1,2,1,2...] forever. But when it's interpereted it will just give you whatever you asked for, so "take 2 (cycle [1,2])" would just give you "[1,2]"

-- "repeat" also creates an infinite list that behaves the same way as "cycle", but for just one item. So "repeat 1" will give you "[1,1,1,1,1,1...]"

-- "replicate" is like "repeat" but for a specified number of repetitions. So "replicate 3 1" will give you [1,1,1]

