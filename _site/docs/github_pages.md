
install

[setup github pages]
(https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll)

```bash
sudo apt-get install ruby ruby-dev
sudo gem install bundler
```

[setup github-pages]
(https://kbroman.org/simple_site/pages/local_test.html)

```bash
gem install github-pages
gem update github-pages

jekyll build
bundle add webrick
bundle exec jekyll serve
```



`_config.yaml`
```
remote_theme: pages-themes/architect@v0.2.0
plugins:
- jekyll-remote-theme # add this line to the plugins list if you already have one
```

testing with theme

make sure to delete the other theme
```bash
git clone https://github.com/pages-themes/architect
architect/script/bootstrap
```