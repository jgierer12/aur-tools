function aur_clean
  if not _is_aur
    return 1
  end

  for path in src pkg *.tar.* LICENSE *.pacman
    rm -rf $path
  end
end
