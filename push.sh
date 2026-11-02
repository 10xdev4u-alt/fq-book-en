# Make sure the script throws the error.
set -e

# If published to custom domain name
# echo 'www.example.com' > CNAME
# Script Referencehttp://wmm66.com/index/article/detail/id/62.html

git add .
git commit -m 'push'
git push

exit 0