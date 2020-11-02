# =============================================================================
# Git  

abbr -a g 'git'

# git - add -------------------------------------------------------------------
abbr -a ga 'git add'
abbr -a gaa 'git add --all'
abbr -a gapa 'git add --patch'
abbr -a gau 'git add --update'
abbr -a gav 'git add --verbose'
abbr -a gap 'git apply'
abbr -a gapt 'git apply --3way'

# git - branch ----------------------------------------------------------------
abbr -a gb 'git branch'
abbr -a gba 'git branch -a'
abbr -a gbd 'git branch -d'
# abbr -a gbda 'git branch --no-color --merged | command grep -vE "^(\+|\*|\s*($(git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d'
abbr -a gbD 'git branch -D'
abbr -a gbl 'git blame -b -w'
abbr -a gbnm 'git branch --no-merged'
abbr -a gbr 'git branch --remote'
abbr -a gbs 'git bisect'
abbr -a gbsb 'git bisect bad'
abbr -a gbsg 'git bisect good'
abbr -a gbsr 'git bisect reset'
abbr -a gbss 'git bisect start'

# git - commit ----------------------------------------------------------------
abbr -a gc 'git commit -v'
abbr -a gc! 'git commit -v --amend'
abbr -a gcn! 'git commit -v --no-edit --amend'
abbr -a gca 'git commit -v -a'
abbr -a gca! 'git commit -v -a --amend'
abbr -a gcan! 'git commit -v -a --no-edit --amend'
abbr -a gcans! 'git commit -v -a -s --no-edit --amend'
abbr -a gcam 'git commit -a -m'
abbr -a gcsm 'git commit -s -m'
abbr -a gcb 'git checkout -b'
abbr -a gcf 'git config --list'
abbr -a gcl 'git clone --recurse-submodules'
abbr -a gclean 'git clean -id'
abbr -a gpristine 'git reset --hard && git clean -dffx'
# abbr -a gcm 'git checkout $(git_main_branch)'
abbr -a gcd 'git checkout develop'
abbr -a gcmsg 'git commit -m'
abbr -a gco 'git checkout'
abbr -a gcount 'git shortlog -sn'
abbr -a gcp 'git cherry-pick'
abbr -a gcpa 'git cherry-pick --abort'
abbr -a gcpc 'git cherry-pick --continue'
abbr -a gcs 'git commit -S'

# git - diff -------------------------------------------------------------------
abbr -a gd 'git diff'
abbr -a gdca 'git diff --cached'
abbr -a gdcw 'git diff --cached --word-diff'
# abbr -a gdct 'git describe --tags $(git rev-list --tags --max-count=1)'
abbr -a gds 'git diff --staged'
abbr -a gdt 'git diff-tree --no-commit-id --name-only -r'
abbr -a gdw 'git diff --word-diff'

# function gdnolock() {
#   git diff "$@" ":(exclude)package-lock.json" ":(exclude)*.lock"
# }
# compdef _git gdnolock git-diff
# 
# function gdv() { git diff -w "$@" | view - }
# compdef _git gdv git-diff

abbr -a gf 'git fetch'
abbr -a gfa 'git fetch --all --prune'
abbr -a gfo 'git fetch origin'

abbr -a gfg 'git ls-files | grep'

abbr -a gg 'git gui citool'
abbr -a gga 'git gui citool --amend'

# function ggf() {
#   [[ "$#" !  1 ]] && local b="$(git_current_branch)"
#   git push --force origin "${b: $1}"
# }
# compdef _git ggf git-checkout
# function ggfl() {
#   [[ "$#" !  1 ]] && local b="$(git_current_branch)"
#   git push --force-with-lease origin "${b: $1}"
# }
# compdef _git ggfl git-checkout

# function ggl() {
#   if [[ "$#" !  0 ]] && [[ "$#" != 1 ]]; then
#     git pull origin "${*}"
#   else
#     [[ "$#"  = 0 ]] && local b="$(git_current_branch)"
#     git pull origin "${b: $1}"
#   fi
# }
# compdef _git ggl git-checkout
# 
# function ggp() {
#   if [[ "$#" !  0 ]] && [[ "$#" != 1 ]]; then
#     git push origin "${*}"
#   else
#     [[ "$#"  = 0 ]] && local b="$(git_current_branch)"
#     git push origin "${b: $1}"
#   fi
# }
# compdef _git ggp git-checkout
# 
# function ggpnp() {
#   if [[ "$#"  = 0 ]]; then
#     ggl && ggp
#   else
#     ggl "${*}" && ggp "${*}"
#   fi
# }
# compdef _git ggpnp git-checkout
# 
# function ggu() {
#   [[ "$#" !  1 ]] && local b="$(git_current_branch)"
#   git pull --rebase origin "${b: $1}"
# }
# compdef _git ggu git-checkout

abbr -a ggpur 'ggu'
# abbr -a ggpull 'git pull origin "$(git_current_branch)"'
# abbr -a ggpush 'git push origin "$(git_current_branch)"'

# abbr -a ggsup 'git branch --set-upstream-to=origin/$(git_current_branch)'
# abbr -a gpsup 'git push --set-upstream origin $(git_current_branch)'

abbr -a ghh 'git help'

# abbr -a gignore 'git update-index --assume-unchanged'
# abbr -a gignored 'git ls-files -v | grep "^[[:lower:]]"'
# abbr -a git-svn-dcommit-push 'git svn dcommit && git push github $(git_main_branch):svntrunk'

abbr -a gk '\gitk --all --branches'
abbr -a gke '\gitk --all $(git log -g --pretty=%h)'

abbr -a gl 'git pull'
abbr -a glg 'git log --stat'
abbr -a glgp 'git log --stat -p'
abbr -a glgg 'git log --graph'
abbr -a glgga 'git log --graph --decorate --all'
abbr -a glgm 'git log --graph --max-count=10'
abbr -a glo 'git log --oneline --decorate'
abbr -a glol "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
abbr -a glols "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat"
abbr -a glod "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
abbr -a glods "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
abbr -a glola "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all"
abbr -a glog 'git log --oneline --decorate --graph'
abbr -a gloga 'git log --oneline --decorate --graph --all'
abbr -a glp "_git_log_prettily"

abbr -a gm 'git merge'
abbr -a gmom 'git merge origin/$(git_main_branch)'
abbr -a gmt 'git mergetool --no-prompt'
abbr -a gmtvim 'git mergetool --no-prompt --tool=vimdiff'
# abbr -a gmum 'git merge upstream/$(git_main_branch)'
abbr -a gma 'git merge --abort'

abbr -a gp 'git push'
abbr -a gpd 'git push --dry-run'
abbr -a gpf 'git push --force-with-lease'
abbr -a gpf! 'git push --force'
# # abbr -a gpoat 'git push origin --all && git push origin --tags'
abbr -a gpu 'git push upstream'
abbr -a gpv 'git push -v'

abbr -a gr 'git remote'
abbr -a gra 'git remote add'
abbr -a grb 'git rebase'
abbr -a grba 'git rebase --abort'
abbr -a grbc 'git rebase --continue'
abbr -a grbd 'git rebase develop'
abbr -a grbi 'git rebase -i'
# abbr -a grbm 'git rebase $(git_main_branch)'
abbr -a grbs 'git rebase --skip'
abbr -a grev 'git revert'
abbr -a grh 'git reset'
abbr -a grhh 'git reset --hard'
# abbr -a groh 'git reset origin/$(git_current_branch) --hard'
abbr -a grm 'git rm'
abbr -a grmc 'git rm --cached'
abbr -a grmv 'git remote rename'
abbr -a grrm 'git remote remove'
abbr -a grs 'git restore'
abbr -a grset 'git remote set-url'
abbr -a grss 'git restore --source'
# abbr -a grt 'cd "$(git rev-parse --show-toplevel || echo .)"'
abbr -a gru 'git reset --'
abbr -a grup 'git remote update'
abbr -a grv 'git remote -v'

abbr -a gsb 'git status -sb'
abbr -a gsd 'git svn dcommit'
abbr -a gsh 'git show'
abbr -a gsi 'git submodule init'
abbr -a gsps 'git show --pretty=short --show-signature'
abbr -a gsr 'git svn rebase'
abbr -a gss 'git status -s'
abbr -a gst 'git status'

# # use the default stash push on git 2.13 and newer
# autoload -Uz is-at-least
# # is-at-least 2.13 "$(git --version 2>/dev/null | awk '{print $3}')" \
#   && abbr -a gsta 'git stash push' \
#   || abbr -a gsta 'git stash save'

abbr -a gstaa 'git stash apply'
abbr -a gstc 'git stash clear'
abbr -a gstd 'git stash drop'
abbr -a gstl 'git stash list'
abbr -a gstp 'git stash pop'
abbr -a gsts 'git stash show --text'
abbr -a gstu 'git stash --include-untracked'
abbr -a gstall 'git stash --all'
abbr -a gsu 'git submodule update'
abbr -a gsw 'git switch'
abbr -a gswc 'git switch -c'

abbr -a gts 'git tag -s'
abbr -a gtv 'git tag | sort -V'
# abbr -a gtl 'gtl(){ git tag --sort=-v:refname -n -l "${1}*" }; noglob gtl'

abbr -a gunignore 'git update-index --no-assume-unchanged'
abbr -a gunwip 'git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
abbr -a gup 'git pull --rebase'
abbr -a gupv 'git pull --rebase -v'
abbr -a gupa 'git pull --rebase --autostash'
abbr -a gupav 'git pull --rebase --autostash -v'
# abbr -a glum 'git pull upstream $(git_main_branch)'

abbr -a gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
# abbr -a gwip 'git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'

abbr -a gam 'git am'
abbr -a gamc 'git am --continue'
abbr -a gams 'git am --skip'
abbr -a gama 'git am --abort'
abbr -a gamscp 'git am --show-current-patch'

# function grename() {
#   if [[ -z "$1" || -z "$2" ]]; then
#     echo "Usage: $0 old_branch new_branch"
#     return 1
#   fi
# 
#   # Rename branch locally
#   git branch -m "$1" "$2"
#   # Rename branch in origin remote
#   if git push origin :"$1"; then
#     git push --set-upstream origin "$2"
#   fi
# }
