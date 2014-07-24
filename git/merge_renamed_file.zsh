
# BE: use this to merge stuff that has changed enough to break git's rename detection.
#
# (long_lived_branch)% merge_renamed_file long_lived_branch app/models/foobar.rb
#
#   (gives you a diff of what changed on foobar.rb upstream since the last merge)
merge_renamed_file() {
  branch=$1
  remote_filename=$2

  base=$(git merge-base ${branch} origin/master)
  git diff ${base}..origin/master -- $remote_filename
}

merge_renamed_file3() {
  branch=$1
  othe=$2
  remote_filename=$3

  base=$(git merge-base ${branch} ${other})
  git diff ${base}..${other} -- $remote_filename
}
