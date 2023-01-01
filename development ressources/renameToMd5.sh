for file in *; do mv "$file" "$(md5sum "$file" | cut -d' ' -f1).${file##*.}"; done
