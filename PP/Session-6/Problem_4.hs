fact k = product [1..k]

approx :: Int -> Double
approx n = sum (map (\k -> 1 / fromIntegral (fact k)) [0..n])

-- Same as the one above, but without the type signature. Therefore, no need for 'fromIntegral'
approx1 n = sum (map (\k -> 1 /  (fact k)) [0..n])