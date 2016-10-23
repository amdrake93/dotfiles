# Fetch, stash, rebase, unstash quickly
function gitmelatest() {
    git fetch --all
    git stash -u
    git rebase $1
    git stash pop
}
