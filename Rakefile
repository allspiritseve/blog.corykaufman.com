task :deploy do
  system 'git add --all'
  system "git commit -m 'Deploy #{Time.now}'"
  system 'jekyll && jekyll-s3'
  system 'git push origin master'
end
