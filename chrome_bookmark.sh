
OUTPUT_FILE="chrome_bookmarks_backup.json"

BOOKMARKS_FILE="$HOME\AppData\Local\Google\Chrome\User Data\Default\Bookmarks"
if [ -f "$BOOKMARKS_FILE" ]; then
  # Copy the bookmarks file to the output file
  cp "$BOOKMARKS_FILE" "$OUTPUT_FILE"
  echo "Bookmarks have been saved to $OUTPUT_FILE."
else
  echo "Bookmarks file not found."
  exit 1
fi
