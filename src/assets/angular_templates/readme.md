# Angular Templates

These are written in Jade, not Haml, because the Haml compilers on Node aren't that great.

Rails does *not* compile these automatically.

These *.jade files are compiled into /public/templates using a `gulp` task.

```
gulp angular_templates
```

To do a one time compilation

```
gulp bot
```

To watch this directory and compile when a jade file changes. This is handy when in development mode.

*NOTE* If you add directories or move files while gulp is running, you may need to restart it. The watch function is rather unsophisticated.