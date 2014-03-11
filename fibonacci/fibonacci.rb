$_ = $$ / $$ # a = 1
@_ = $_      # b = 1
$. = $_ + $_ + $_  #  3 for 10
$. *= $.; $. += $_ # 10 for newline

($-_ = -> {
  $> << $_ << ('' << $.) # Output a.
  $_ += @_ # Add b to a.
  $> << @_ << ('' << $.) # Output b.
  @_ += $_ # Add a to b.
  $-_[] # Repeat ad infinitum.
})[]
