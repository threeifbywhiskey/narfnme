_ = $$ / $$    #  1
__ = _ - _ - _ # -1

# This Proc takes a string and returns its length.
$_ = -> ___ {
  (@_ = -> {
    $. += _
    (___ = ___[_..__]) == '' ? $. : @_[]
  })[]
}
