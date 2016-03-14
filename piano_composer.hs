import MusicResources
import Data.List (sortBy)
sortGT (a1, b1) (a2, b2)
  | a1 < a2 = GT
  | a1 > a2 = LT
  | a1 == a2 = compare b1 b2
str [] = []
str (x:xs) = x++"A"++str xs
total = str training
makeStatsList :: [(Char,[(Int,Char)])]
makeStatsList =  makeStatsListHelper chars
makeStatsListHelper ::[Char] ->[(Char,[(Int,Char)])]
makeStatsListHelper [] = []
makeStatsListHelper (x:xs) = (x,remove (sortBy sortGT (zip (find x chars) chars))):makeStatsListHelper xs 
find  y [] = []
find  y (x:xs) = (search y x total): find y xs
search x y []=0
search x y (x1:[])= 0
search x y (x1:x2:xs) 
 | x==x1 && y==x2 =1+(search x y (x2:xs))
 | otherwise =search x y (x2:xs)
remove [] = []
remove ((x,y):xs)
 |x==0 = remove xs
 |otherwise = ((x,y)):remove xs
compose :: Char -> Int -> [Char]
compose x 0 = []
compose x y = x:compose (findMe x makeStatsList) (y-1)
findMe x ((x1,y):xs) 
 | x==x1 = getR y
 |otherwise = findMe x xs
getR y  = findI 0 (randomZeroToX (sumUp y)) y
findI l x ((x1,y1):xs);
 |x>l && ((l+x1)>= x) = y1
 |otherwise = findI (l+x1) x xs
sumUp [] = 0
sumUp ((x,y):xs) = x+sumUp xs