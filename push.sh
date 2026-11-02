# exit on any error
set -e

# for a custom domain, uncomment below
# echo 'www.example.com' > CNAME
# script reference: http://wmm66.com/index/article/detail/id/62.html

git add .
git commit -m 'push'
git push

exit 0