# to have 'seethru-convert' install it with
# npm install seethru -g

source_root="./APNG"

intermedia_root="./final/_temp"
dest_root="./final/movie"


mkdir -p $intermedia_root
mkdir -p $dest_root


function convert {
  animation=$1
  filename=$2

  # convert it to a film
  ffmpeg -i "${source_root}/${animation}.png" -vcodec png "$intermedia_root/${filename}_RGBA.mov"

  # create the native webm approac
  # ffmpeg -i "$intermedia_root/${filename}_RGBA.mov" -b:v 400k -c:v vp8 -auto-alt-ref 0 -pix_fmt yuva420p "$dest_root/${filename}_400k_vp8.webm"

  # convert it for fallback videos
  seethru-convert --in "$intermedia_root/${filename}_RGBA.mov" --out "$intermedia_root/$filename.mov"
  ffmpeg -i "$intermedia_root/${filename}.mov" -vcodec h264 -b:v 800k -vf format=yuv420p -acodec aac -strict -2 "$dest_root/${filename}_800k.mp4"
}


convert "Animation_01/profile pic 620" "profile"
convert "Animation_02/Excited 620 apng" "excited"
convert "Animation_03/Dance 620" "dance"
convert "Animation_04/Sleepy 620" "sleepy"
convert "Animation_05/Error 620" "error"
