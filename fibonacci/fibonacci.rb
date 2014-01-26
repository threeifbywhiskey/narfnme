$_ = $$ / $$ # a = 1
@_ = $_      # b = 1
$. = $_ + $_ + $_  #  3 for 10
$. *= $.; $. += $_ # 10 for newline

$- = -> {
  $> << $_ << ('' << $.) # Output a.
  $_ += @_ # Add b to a.
  $> << @_ << ('' << $.) # Output b.
  @_ += $_ # Add a to b.
  $-[] # Repeat ad infinitum.
}

$-[] # Kick it off.
