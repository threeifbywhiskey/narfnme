_  = $$ / $$  #  1
__ =  _ +  _  #  2
$. =  _ + __  #  3
$-_= $. + __  #  5
$_ = __ * $-_ # 10

# This Proc takes one parameter and returns its digital sum.
@__ = -> _ {     # n = _
  @_ = _ - _     # sum = 0
  ($-_ = -> {     # inner loop
    @_ += _ % $_ # sum += n % 10
    _ /= $_      # n /= 10
    _ == _ - _ ? @_ : $-_[] # Return sum if n is 0 or go again.
  })[] # Call inner loop immediately.
}
