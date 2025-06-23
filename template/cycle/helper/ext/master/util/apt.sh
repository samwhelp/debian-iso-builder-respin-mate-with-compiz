

################################################################################
### Head: Master / Util / Apt
##

util_apt_source_list_create_simple () {

	local package_repo_url="${1}"
	local build_suite="${2}"

cat << __EOF__
deb ${package_repo_url} ${build_suite} main contrib non-free non-free-firmware
deb ${package_repo_url} ${build_suite}-updates main contrib non-free non-free-firmware
deb ${package_repo_url} ${build_suite}-backports main contrib non-free non-free-firmware
deb http://security.debian.org/debian-security/ ${build_suite}-security main contrib non-free non-free-firmware
__EOF__

}





##
### Tail: Master / Util / Apt
################################################################################
