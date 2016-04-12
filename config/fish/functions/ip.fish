function ip
  set wan (curl -s http://ipecho.net/plain)
  set lan (ipconfig getifaddr en0)

  printf '%sLAN : %s%s%s\n' (set_color red) (set_color cyan) $lan (set_color normal)
  printf '%sWAN : %s%s%s\n' (set_color red) (set_color green) $wan (set_color normal)
end
