#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
	set -o xtrace
fi

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
	echo 'Usage: ./.install.sh arg-one arg-two

This is a test bash script.

'
	exit
fi

cd "$(dirname "$0")"

main() {
	echo "Test has been completed"
}

main "$@"
