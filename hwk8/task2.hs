module Main where
    data Suit = Spades | Hearts deriving (Show)
    data Rank = Ten | Jack | Queen | King | Ace deriving (Show)
    type Card = (Rank, Suit)
    type Hand = [Card]

    value :: Rank -> Integer
    value Ten = 1
    value Jack = 2
    value Queen = 3
    value King = 4
    value Ace = 5

    cardValue :: Card -> Integer
    cardValue (rank, suit) = value rank

    lowerCard :: Card -> Card -> Card
    lowerCard x y = if cardValue(x) < cardValue(y) then x else y
    sumValue :: Hand -> Integer
    sumValue h = foldl (+) 0 (map(\x->cardValue x) h)
    higherHand :: [Hand] -> Hand
    higherHand :: Hand -> Hand -> Hand
    higherHand x y = if sumValue(x) > sumValue(y) then x else y
    main = do
        print(lowerCard [(Jack,Hearts),(Ten,Spades)])
        print(sumValue [(Jack,Hearts),(Ten,Spades),(Ace,Spades)])
        print(higherHand [[(Jack,Hearts),(Ten,Spades),(Queen,Spades)],[(Jack,Hearts),(Ten,Spades),(King,Hearts)]] )