_   = $$ / $$ #  1
__  =  _ -  _ #  0
@_  =  _ +  _ #  2
$_  = @_ +  _ #  3
$-  = @_ + $_ #  5
$-_ = $- * $_ # 15

@__  = '' << $-_ * ($- + $_) + @_ # z
$___ = '' << $-_ * $- - $- << $-_ * ($- + @_) << @__ << @__ # Fizz
@___ = '' << $-_ * $- - $_ * $_ << $-_ * ($- + $_) - $_ << @__ << @__ # Buzz

(___ = -> { # the fizzbuzz lambda
  $. += _   # increment n
  $> << ($. % $-_ == __ ? $___ + @___ # "FizzBuzz" if mod-15
       : $. % $_  == __ ? $___        # "Fizz" for 3
       : $. % $-  == __ ? @___        # "Buzz" for 5
       : $.) <<                       # Otherwise, n
       ('' << $- * @_)                # and a newline
  $. < ($- * @_) ** @_ ? ___[] : _    # Check n against 100
})[] # Immediately invoke the lambda.
