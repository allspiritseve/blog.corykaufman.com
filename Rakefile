task :deploy do
  raise 'Must be on master to deploy' if current_branch != 'master'
  save current_branch, 'Deploy' do
    system 'jekyll && jekyll-s3'
  end
end

task :save do
  if current_branch == 'drafts'
    save current_branch, 'Saved draft'
  else
    save current_branch
  end
end

def current_branch
  `git status`.match(/On branch (.*)/)[1]
end

def save(branch, label = 'Save')
  system 'git add --all'
  system "git commit -m '#{label} #{Time.now}'"
  yield if block_given?
  system "git push origin '#{branch}'"
end

