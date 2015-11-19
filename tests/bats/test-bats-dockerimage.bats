#!/usr/bin/env bats

TERRAFORM_VERSION=0.6.6
@test "Test that the container returns correctly the appropriate version = ${TERRAFORM_VERSION}" {
	result="$(docker run ${DOCKER_IMAGE_NAME} version)"
	[[ "$result" == *"terraform version: ${TERRAFORM_VERSION}"* ]]
	echo "-$result-"
}
