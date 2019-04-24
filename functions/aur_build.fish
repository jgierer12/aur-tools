function aur_build
  if not _is_aur
    return 1
  end

  aur_clean
  updpkgsums
  makepkg --printsrcinfo > .SRCINFO
  makepkg
end
