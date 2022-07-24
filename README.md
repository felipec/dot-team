`dot-team` is a collection of collaborative distributed configuration files ([dotfiles][]).

We borrow from `git`'s philosophy: it's a **distributed** system of configurations. If you think a
configuration might be useful to other people, don't hesitate and contribute it to the upstream
project.

There is no point in thousands of people creating essentially the same configurations time and time
again, when by doing a little bit of extra work we can properly store our configurations either in a
private repository, a personal public repository, or the canonical upstream repository.

The main point of `dot-team` isn't to store and manage configurations--there's many projects already
that do that--the main point is to **share** our configurations and work in a collaborative manner.

## Philosophy

The philosophy behind `dot-team` is to do configurations once, but do them well.

While developing in `git` it's a good practice to check every single commit two or more times to
make sure the changes are correct, and if there's an easy way to make then extensible, do it right
away rather than wait for somebody stumbling into an issue later on.

Changes should also have a description, this not only helps other people to understand the change,
but it also helps your future self who might not remember why you did that change a month, or even a
year ago.

## Tools

The main tool of `dot-team` is a command called `dot-config` which uses `git` internally.

You can use `dot-config` exactly like you would use `git`, for example, to check if you've made any
changes to your `.vimrc` file you can do `dot-config diff .vimrc`. To save your changes to that file
use `dot-config commit .vimrc`.

Another useful command is `dot-config status`, which allows you to see all the untracked files and
perhaps add them to the git repository.

If there's a file or directory you know you don't want to keep track of, add it to the `.gitignore`
file so it doesn't appear in the list of untracked files (it's ignored).

This tool is developed as an independent project: [dot-tools][].

## Setup

Once you have installed [dot-tools][] simply do `dot-setup`, that's it.

All the files from `dot-team` you don't currently have will be fetched, and if there are conflicts
with files you do currently have (e.g. `.bashrc`) then your version will remain.

[dotfiles]: https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory
[git]: https://git-scm.com/
[dot-tools]: https://github.com/felipec/dot-tools/
