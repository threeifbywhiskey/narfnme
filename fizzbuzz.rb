# Run with `seq 100 | ruby -n fizzbuzz.rb`.

$-_ = $$ - $$  # 0
$-  = $$ / $$  # 1
@_  = $- + $-  # 2
$_  = $- + @_  # 3
$__ = @_ + $_  # 5
@__ = $_ * $__ # 15

$____ = '' << @__ * ($__ + $_) + @_ # z
$___  = '' << @__ * $__ - $__ << @__ * ($__ + @_) << $____ << $____          # Fizz
@___  = '' << @__ * $__ - $_ * $_ << @__ * ($_ + $__) - $_ << $____ << $____ # Buzz

$> << ($. % @__ == $-_ ? # mod-15 check
       $___ + @___ :     # FizzBuzz
       $. % $_ == $-_  ? # mod-3
       $___ :            # Fizz
       $. % $__ == $-_ ? # mod-5
       @___ :            # Buzz
       $.) << ('' << $__ * @_)  # n and newline