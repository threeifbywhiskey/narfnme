$.    = $$ / $$   #  1
$_    = $. + $.   #  2
@_    = $. + $_   #  3
$__   = $. + @_   #  4
@__   = $_ + @_   #  5
___   = $_ * @_   #  6
$___  = @_ + $__  #  7
@___  = $_ * $__  #  8
$____ = $. + @___ #  9
$-_   = $_ * @__  # 10
____  = $. - $.   #  0

$_____ = [____, @_, @_, @__, $__, $__, @_, @__, @__, $__, @_, ___, ___, @___, @___, $___, $___, $____, @___, @___]
@_____ = [____, @_, ___, ___, @__, @__, @__, $___, ___, ___]

_____ = -> _ {
  _ < $_ * $-_ ?  $_____[_]
  : _ % $-_ == ____ && _ < $-_ * $-_ ? @_____[_ / $-_]
  : _ < $-_ * $-_ ? @_____[_ / $-_] + $_____[_ % $-_]
  : $_____[_ / ($-_ * $-_)] + (_ % ($-_ * $-_) == ____ ? $___ : $-_) + _____[_ % ($-_ * $-_)]
}

______ = -> _, &__ {
  _ == [] ? [] : [__[_[____]]] + ______[_[$...$. - $_], &__]
}

_______ = -> _ {
  _ == [] || _ == '' ? ____ : $. + _______[_[$...$. - $_]]
}

$______ = -> _, &__ {
  $__ = _______[_]
  @__ = _[____]
  ___ = $.

  ($___ = -> {
    @__ = __[@__, _[___]]
    (___ += $.) == $__ ? @__ : $___[]
  })[]
}

$> << $______[______[[*$...$-_ ** @_], &-> _ { _____[_] }], &:+] + $. << ('' << $-_)