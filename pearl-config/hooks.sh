
function post_install(){
    local giturl=https://github.com/greymd/tmux-xpanes.git

    info "Installing or updating the ${PEARL_PKGNAME} git repository..."
    install_or_update_git_repo $giturl "${PEARL_PKGVARDIR}/tmux-xpanes" master

    link_to_path "${PEARL_PKGVARDIR}/tmux-xpanes/bin/tmux-xpanes"
}

function post_update(){
    post_install
}

function pre_remove(){
    unlink_from_path "${PEARL_PKGVARDIR}/tmux-xpanes/bin/tmux-xpanes"

    rm -rf "${PEARL_PKGVARDIR}/tmux-xpanes"
}
