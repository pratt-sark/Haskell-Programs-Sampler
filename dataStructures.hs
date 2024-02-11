-- Program: dataStructures.hs
-- Description: Implements basic data structures in Haskell.

-- Define a simple binary tree data structure
data BinaryTree a = EmptyTree | Node a (BinaryTree a) (BinaryTree a) deriving (Show)

-- Function to insert an element into a binary tree
insert :: Ord a => a -> BinaryTree a -> BinaryTree a
insert x EmptyTree = Node x EmptyTree EmptyTree
insert x (Node a left right)
    | x == a = Node a left right
    | x < a  = Node a (insert x left) right
    | x > a  = Node a left (insert x right)

-- Function to construct a binary search tree from a list of elements
fromList :: Ord a => [a] -> BinaryTree a
fromList = foldr insert EmptyTree

-- Main function to demonstrate data structures
main :: IO ()
main = do
    let nums = [8, 6, 4, 1, 7, 3, 5]
        tree = fromList nums
    putStrLn "Binary Tree constructed from list:"
    print tree
