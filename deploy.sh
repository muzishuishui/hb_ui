rm -rf dist &&
yarn build &&
git init &&
git add . &&
git commit -m "hb_ui" &&
git branch -M master &&
git remote add origin git@github.com:muzishuishui/hb_ui.git &&
git push -f -u origin master &&
cd -
