#!/bin/bash
# Default variables
count=5
size=5
output_dir="/opt/{{ randomfile_dest }}"

# Help message
display_help() {
    echo "Usage: $0 -c <dosya_sayısı> -s <dosya_boyutu>"
    echo "Example: $0 -c 5 -s 3"
    exit 1
}

# Options
while getopts "c:s:" opt; do
    case $opt in
        c) count="$OPTARG";;
        s) size="$OPTARG";;
        *) display_help;;
    esac
done

# Create file func
create_files() {
    local file_count=$1
    local file_size=$2

    for ((i=1; i<=$file_count; i++)); do
        # Create file wth random name
        random_name=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
        dd if=/dev/urandom of="$output_dir/$random_name" bs=1K count=$file_size &>/dev/null
        echo "$random_name created to $output_dir"
    done
}

# Check for -c parameter
if [[ $count =~ ^[0-9]+$ && $size =~ ^[0-9]+$ ]]; then
    create_files "$count" "$size"
else
    display_help
fi
