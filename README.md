# hello-world-rails-plugin-gen

hello-world-rails-plugin-gen is a plugin for debugging the Discourse rails plugin generator

## Reference

[Discourse::Meta::Rails plugin generator](https://meta.discourse.org/t/rails-plugin-generator/95907)

## Key Details

- This plugin was generated with the Discourse rails plugin generator using

```
rails g plugin hello-world
```

- Added Rails lifecycle logging to `./log/hello_world_log.txt` to test the plugin generator and notice the Rails controllers were ignored (not working)

- Moved the Rails controllers up one directory and they worked as expected

- Added a new Ember controller/template for the main index page / route

- Added some logic in the main index page / route to read and diplay cookies (add your own to test)

- Added some HTML and CSS to the templates to illustrate how they work

## Feedback

If you want to read more about this plugin or have any issues or suggestions for the plugin, please discuss here:

https://community.unix.com/t/a-plugin-for-debugging-the-discourse-rails-plugin-generator/379570
