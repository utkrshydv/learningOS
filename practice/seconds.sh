read -p "enter seconds: " seconds

hours=$((seconds/3600))
minutes=$(((seconds%3600)/60))
rem_seconds=$((seconds%60))

echo "$seconds seconds = $hours hours, $minutes minutes, $rem_seconds seconds"

