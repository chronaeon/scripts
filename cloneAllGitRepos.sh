curl -s https://api.github.com/users/chronaeon/repos?per_page=200 | python -c $'import json, sys, os\nfor repo in json.load(sys.stdin): os.system("git clone " + repo["clone_url"])'
