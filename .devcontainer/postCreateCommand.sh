# qiita-cli

export QIITA_ACCESS_TOKEN="$ACCESS_TOKEN"

npm install @qiita/qiita-cli --save-dev

npx qiita init


printf '{
  "default": "qiita",
  "credentials": [
    {
      "name": "qiita",
      "accessToken": "%s"
    }
  ]
}' $QIITA_ACCESS_TOKEN > .config/credentials.json

mkdir ~/.config/qiita-cli/
cp -p .config/credentials.json ~/.config/qiita-cli/credentials.json

npx qiita preview
