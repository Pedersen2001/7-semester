import qualified Prelude
import Prelude hiding (Functor, fmap)

-- Let r be some given type. 
-- The function type constructor ((−>)r) is defined 
-- such that f a will be (r −> a).
-- Define an instance of Functor for this type constructor.
-- In order to test your solution, 
-- add the following at the start of the file containing your code:
-- import qualified Prelude
-- import Prelude hiding (Functor, fmap)


-- Type of the normal: fmap :: (a -> b) -> f a -> f b
-- Type of fmap for type constructor: fmap :: (a -> b) -> (r -> a) -> (r -> b)

class Functor f where
    fmap :: (a -> b) -> f a -> f b

instance Functor ((->) r) where
    -- fmap :: (a -> b) -> (r -> a) -> (r -> b)
    fmap f g = f . g