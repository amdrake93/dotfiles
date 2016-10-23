#!/bin/bash

function aws
{
	# ssh ec2-user@10.0.$1
	OIFS=$IFS
	IFS='.'
	arr=($1)
	IFS=$OIFS
	LENGTH=${#arr[@]}
	CONNECT_COMMAND="ssh ec2-user@"
	if [[ $LENGTH = 1 ]]; then
		CONNECT_COMMAND=$CONNECT_COMMAND"10.0.0.$1"
	elif [[ $LENGTH = 2 ]]; then
		CONNECT_COMMAND=$CONNECT_COMMAND"10.0.$1"
	elif [[ $LENGTH = 3 ]]; then
		CONNECT_COMMAND=$CONNECT_COMMAND"10.$1"
	elif [[ $LENGTH = 4 ]]; then
		CONNECT_COMMAND=$CONNECT_COMMAND"$1"
	fi
	$CONNECT_COMMAND
}

function fromaws
{
	FROM="scp ec2-user@10.0.$1:$2 $3"
	echo $FROM
	`$FROM`
}
function toaws
{
	TO="scp $1 ec2-user@10.0.$2:$3"
	echo $TO
	`$TO`
}
