function __cache_or_get_rake_completion -d "Create rake completions"
  mkdir -p "/tmp/fish/rake_completion_cache_for_$USER/"
  set -l hashed_pwd (md5 -q -s (pwd))
  set -l rake_cache_file "/tmp/fish/rake_completion_cache_for_$USER/$hashed_pwd"

  if not test -f "$rake_cache_file"
    rake -T 2>&1 | sed -e "/^(/d" -e "s/^rake \([a-z:_0-9!\-]*\).*/\1/" > "$rake_cache_file"
  end

  cat "$rake_cache_file"
end

function __run_rake_completion -d "Check for presence of a Rakefile"
  test -f rakefile; or test -f Rakefile; or test -f rakefile.rb; or test -f Rakefile.rb
end

complete -x -c rake -a "(__cache_or_get_rake_completion)" -n __run_rake_completion
