alias gpom="git pull origin master"
alias gp="git push"
alias gaa="git add -A"
alias gau="git add -u"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gs="git status"

function gcm() {
    local message="${1}"
    git commit -m "${message}"
}

function gcb() {
    local branch="${1}"
    git checkout -b "${branch}"
}