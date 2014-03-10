@_ = $$ / $$              # 1
_ = @_ - @_               # 0 = 1 - 1
@__ = @_ + @_             # 2 = 1 + 1
@___ = @_ + @_ + @_       # 3 = 1 + 1 + 1
@____ = @__ ** @__        # 4 = 2 ** 2

# How many iterations do we want to run?
#
# This is our "precision".
$__ = @____ * @__ ** @__ ** @___  # 1024 = 4 * 2 ** 2 ** 3

$___ = @___ ** (@__ ** -@_)   # sqrt(3) = 3 ** (2 ** -1)
$____ = $___ / $___           # 1.0 = sqrt(3) / sqrt(3)


# The following lambda corresponds to this code:
#
# approx = ->(acc, n) {
#   n == precision ? acc : (
#     term = ((-1.0) ** n) / (2 * n + 1)
#     approx.(acc + term, n + 1)
#   )
# }

__ = ->(___, ____) {
  ____ == $__ ? ___ : (
    _____ = ((-$____) ** ____) / (@__ * ____ + @_)
    __.(___ + _____, ____ + @_)
  )
}

# We can output a newline by printing 10, ASCII for "\n".
@_____ = @_ + @___ ** @__     # 10 = 1 + 3 ** 2

$> << (__.(_, _) * @____)     # print approx.(0, 0) * 4
$> << ('' << @_____)          # print "\n"
