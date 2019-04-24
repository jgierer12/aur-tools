function _is_aur
  test -f PKGBUILD
  set s $status

  if not test $s -eq 0
    echo (set_color red)'No PKGBUILD found. cd into package root directory.'(set_color normal)
  end

  return $s
end
