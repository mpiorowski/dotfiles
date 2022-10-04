function gitup --wraps=git --description 'alias gitup="git commit -am update && git push"'
  git commit -am update && git push $argv;
end
