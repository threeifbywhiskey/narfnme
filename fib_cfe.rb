$_ = $$ / $$ #  1
@_ = $_ + $_ #  2
$- = $_ - @_ # -1
$__= @_ * @_ + $_ # 5
@__= $__ ** (@_ ** $-) # sqrt(5)

$___ = ($_ + @__) / @_ # golden ratio
@___ = ($_ / -$___)    # negative reciprocal

$. = $_ # Initialize counter.

@____ = -> {
  $- = ($___ ** $. - @___ ** $.) / @__  # reuse for fib number
  $> << $- - $- % $_<< ('' << @_ * $__) # output as Float and newline
  $. += $_ # increment
  @____[]  # Go again.
}

@____[]
