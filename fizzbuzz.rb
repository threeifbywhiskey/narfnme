_   = $$  / $$ #  1
__  =  _  -  _ #  0
@_  =  _  +  _ #  2
$_  = @_  +  _ #  3
$__ = @_  + $_ #  5
$-_ = $__ * $_ # 15

@__  = '' << $-_ * ($__ + $_) + @_ # z
$___ = '' << $-_ * $__ - $__ << $-_ * ($__ + @_) << @__ << @__ # Fizz
@___ = '' << $-_ * $__ - $_ * $_ << $-_ * ($__ + $_) - $_ << @__ << @__ # Buzz

(___ = -> { # the fizzbuzz lambda
  $. += _   # increment n
  $> << ($. % $-_ == __ ? $___ + @___ # "FizzBuzz" if mod-15
       : $. % $_  == __ ? $___        # "Fizz" for 3
       : $. % $__  == __ ? @___        # "Buzz" for 5
       : $.) <<                       # Otherwise, n
       ('' << $__ * @_)                # and a newline
  $. < ($__ * @_) ** @_ ? ___[] : _    # Check n against 100
})[] # Immediately invoke the lambda.
