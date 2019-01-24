import Data.List

isEven str n = if (mod n 2) == 0

		then str

		else reverse str



alternate strs = [ oddFlip a b | (a, b) <- zip strs [1..]]

oddFlip as b = if even b

		then as

		else reverse as

chunker strs = if (length strs) > 20

                then ([] ++ (take 20 strs)) ++ chunker (drop 20 strs)

                else [] ++ strs



add a b = a + b