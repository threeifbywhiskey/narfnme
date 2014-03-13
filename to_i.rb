_  = $$ / $$ # 1
__ =  _ +  _ # 2
$_ = __ + __ # 4
@_ = $_ * $_ * (_ ++ __) # 48

# This Proc takes a single-digit string and returns its numerical value.
$__ = -> __ {
  @__ = @_ - _
  (___ = -> {
    ('' << @__ += _) == __ ? @__ - @_ : ___[]
  })[]
}

# This Proc takes a string and returns its numerical value, a la #to_i.
@__ = -> ___ {
  (@___ = -> {
    $. += $__[___[_ - _]]
    $. *= $_ * __ + __
    (___ = ___[_.._ - __]) == '' ? $. / ($_ * __ + __) : @___[]
  })[]
}
