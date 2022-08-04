# 如果没有消息后缀，默认提交信息为 `:pencil: update content`
info=$1
if ["$info" = ""];
then info=":pencil: 2022-08-05 3:54:18"
fi
git add -A
git commit -m "$info"
git push origin hexo