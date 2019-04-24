function aur_test
  if not _is_aur
    return 1
  end

  echo (set_color cyan)'To install package:'(set_color normal)
  echo '  yay -U '(echo *.pkg.tar.xz)

  set s 0
  for file in PKGBUILD *.pkg.tar.xz
    echo

    set output (namcap $file)
    echo $output | rg ' E: ' > /dev/null

    if test $status -eq 0
      echo (set_color red)$file' failed'(set_color normal)
      set s 1
    else
      echo (set_color green)$file' passed'(set_color normal)
    end
    test -n "$output"; and echo $output
  end

  return $s
end
