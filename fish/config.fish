if status is-interactive
  set BROWSER microsoft-edge-dev
  export PATH="$PATH:$(go env GOPATH)/bin"
    # Commands to run in interactive sessions can go here
end
