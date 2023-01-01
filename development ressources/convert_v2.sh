for f in *.mp4; do ffmpeg -i "$f" -vf "scale=-1:ih, crop=ih:ih" -vsync 0 "img/${f%.*}_%d.png"; done
