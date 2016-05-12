# heroku-buildpack-yara

Adds [Yara](https://github.com/plusvic/yara) libraries to your Heroku application.

## Usage

Read up on [buildpack modifications](https://devcenter.heroku.com/articles/buildpacks#buildpack-modifications), and run:

```
$ heroku buildpacks:add https://github.com/heroku/heroku-buildpack-yara
```

To add it to your project. It should install on the next `git push`.

## Environment Variables

This buildpack adds `/app/vendor/bin` to the `PATH` environment variable. When using Go or Python, you may need to ensure that `LD_LIBRARY_PATH` includes `/app/vendor/lib`
