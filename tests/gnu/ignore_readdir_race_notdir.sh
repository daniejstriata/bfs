# Check -ignore_readdir_race handling when a directory is replaced with a file
clean_scratch
touchp scratch/foo/bar

invoke_bfs scratch -mindepth 1 -ignore_readdir_race -execdir rm -r {} \; -execdir $TOUCH {} \;