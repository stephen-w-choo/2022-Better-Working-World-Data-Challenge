echo Running script: $0

function try() {
  for i in $(seq 10); do
    $* && break
    sleep 10
  done
}

set -x

# Get our code
token=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
url=https://codeload.github.com/EY-Data-Science-Program/2022-Better-Working-World-Data-Challenge/zip/main
try curl github.com
wget --header "Authorization:  token $token" $url -O /tmp/archive.zip
unzip /tmp/archive.zip
codepath=/home/frog/challenge
mv 2022-Better-Working-World-Data-Challenge-main $codepath
chown -R frog:frog $codepath
