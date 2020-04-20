# Bash-example


function navigator()
{
  default_position=$(pwd)
  path_to_script="/home/xgf/Desktop/bash/navigator/"
  cd $path_to_script
  $path_to_script/navigator.sh "$default_position"
  echo "Navigator ended."
  cd "$default_position"
  default_position=""
}
