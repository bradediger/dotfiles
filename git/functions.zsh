# git pull recursive
gpr() {
  for git in $(find . -name .git); do
    dir="${git%.git}"
    # don't pull things like my/project/vendor/plugins/foobar automatically
    if [[ "$dir" != */vendor/* ]]; then
      ( cd $dir && git pull --ff-only )
    fi
  done
}

