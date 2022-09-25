if status is-interactive
  set BROWSER brave
  export PATH="$PATH:$(go env GOPATH)/bin"
    # Commands to run in interactive sessions can go here
end
