$. = $$ / $$ # 1
$_ = $. + $. # 2
@_ = $_ + $. # 3
_  = $_ + @_ # 5
$-_ = (_ + _) ** $_ # 100

# Calculate the square of the sum.
$__ = ($-_ / $_ * ($-_ + $.)) ** $_

@__ = $. - $. # 0, sum accumulator

# Loop to accumulate the sum of the squares.
$___ = -> {
  @__ += $. ** $_
  $. += $. / $.
  $. <= $-_ ? $___[] : $.
}

$___[] # Invoke the loop.

$> << $__ - @__ << ('' << _ * $_)
