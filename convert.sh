

# to have 'seethru-convert' install it with
# npm install seethru -g



source_root="./movie/APNG"

intermedia_root="./movie/MOV"
dest_root="./docs/movie/"


animation="Animation_01/profile pic 620"
filename="profile"


# convert it to a film
ffmpeg -i "${source_root}/${animation}.png" -vcodec png "$intermedia_root/${filename}_RGBA.mov"

# create the native webm approac
# ffmpeg -i "$intermedia_root/${filename}_RGBA.mov" -b:v 400k -c:v vp8 -auto-alt-ref 0 -pix_fmt yuva420p "$dest_root/${filename}_400k_vp8.webm"

# convert it for fallback videos
seethru-convert --in "$intermedia_root/${filename}_RGBA.mov" --out "$intermedia_root/$filename.mov"
ffmpeg -i "$intermedia_root/${filename}.mov" -vcodec h264 -b:v 900k -vf format=yuv420p -acodec aac -strict -2 "$dest_root/${filename}_400k.mp4"
