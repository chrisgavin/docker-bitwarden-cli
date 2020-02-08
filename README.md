# Docker Bitwarden CLI
A Docker image for the Bitwarden CLI.

## Usage
```shellsession
$ mkdir -p "$HOME/.config/Bitwarden CLI/"
$ bw() {docker run -it --rm -v "$HOME/.config/Bitwarden CLI/:/home/user/.config/Bitwarden CLI/" -e BW_SESSION chrisgavin/bitwarden-cli "$@"}
$ bw login
? Email address: user@example.com
? Master password: [hidden]
? Two-step login code: 000000
You are logged in!
To unlock your vault, set your session key to the `BW_SESSION` environment variable. ex:
export BW_SESSION="**********"
$ export BW_SESSION="**********"
$ bw login --check
You are logged in!
```
