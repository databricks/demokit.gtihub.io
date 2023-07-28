
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
bundle exec jekyll serve
```

testing with theme
```bash
git clone https://github.com/pages-themes/architect
architect/script/bootstrap
```

