#!/bin/sh

git add .

echo "Select the type of commit:"
echo "1) 📝 Update release notes"
echo "2) ✏️ Typo corrections"
echo "3) ⬆️ Major updates or new releases"
echo "4) 🚚 Redirection/rename changes"
echo "5) 📄 Add licenses, markdowns, etc."
echo "6) 🔨 Bug fixes"
echo "7) ✨ New features or enhancements"
echo "8) 🔧 Technical improvements or general adjustments"
echo "9) 🗑️ Remove unused code or files"
echo "10) 📚 Update documentation"
echo "11) ♻️ Use of best practices and code reuse"
echo "12) 👷 Troubleshooting issues"
echo "13) 🎨 Code refactoring (without changing functionality)"
echo "14) 🚀 Performance improvements"

read -p "Choose an option: " type

case $type in
    1) prefix="📝 update release notes" ;;
    2) prefix="✏️ typo corrections" ;;
    3) prefix="⬆️ major" ;;
    4) prefix="🚚 redirection/rename changes" ;;
    5) prefix="📄 update docs" ;;
    6) prefix="🔨 Bug fixes" ;;
    7) prefix="✨ feature" ;;
    8) prefix="🔧 improvement" ;;
    9) prefix="🗑️ remove" ;;
    10) prefix="📚 update docs" ;;
    11) prefix="♻️ use of best practices" ;;
    12) prefix="👷 troubleshooting" ;;
    13) prefix="🎨 code refactoring" ;;
    14) prefix="🚀 performance improvements" ;;
    *) echo "Invalid option"; exit 1 ;;
esac

read -p "Enter commit message: " message

git commit -m "$prefix: $message"
