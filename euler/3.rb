$_  = $$ / $$ # 1
@_  = $_ + $_ # 2
$-_ = @_ + @_ # 4

# largest prime factor
___ = -> _, __ {
  __ == $_ ? _ : __ % _ == $. ? ___[_, __ / _] : ___[_ + @_, __]
}

$__ = $-_ ** ($_ + @_) + $-_ * @_ - $_             #   71
@__ = $__ * $-_ * ($_ + @_) - $-_ * ($_ + @_) - $_ #  839
$___ = @__ * @_ - $__ * ($_ + @_) + @_ + $-_       # 1471
@___ = $___ * $-_ + @__ + $__ + $__ - (@_ * $-_)   # 6857
$> << ___[$_ + @_, $__ * @__ * $___ * @___] << ('' << $-_ * @_ + @_)