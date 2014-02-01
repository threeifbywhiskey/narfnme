_  = $$ / $$ #  1
__ =  _ +  _ #  2
$. =  _ + __ #  3
$- = $. + __ #  5
$_ = __ * $- # 10

# This Proc takes one parameter and returns its digital sum.
@__ = -> _ {     # n = _
  @_ = _ - _     # sum = 0
  ($- = -> {     # inner loop
    @_ += _ % $_ # sum += n % 10
    _ /= $_      # n /= 10
    _ == _ - _ ? @_ : $-[] # Return sum if n is 0 or go again.
  })[] # Call inner loop immediately.
}

$> << @__[__ ** $_ ** $.] << ('' << $_) # Call with 2 ** 1000.
