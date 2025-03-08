# Justfile

default:
  @just --list

serve:
  docker run --rm -ti -v $PWD:/srv/jekyll -p 4000:4000 jekyll/jekyll jekyll serve --incremental

update:
  docker run --rm -ti -v $PWD:/srv/jekyll jekyll/jekyll bundle update
