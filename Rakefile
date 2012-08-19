task :deploy do
  system 'jekyll && rsync -avz --delete -e ssh _site/ ck:blog.corykaufman.com && git push origin master'
end
