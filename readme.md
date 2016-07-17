Jekyll-based portfolio website.

# Development

Run `make develop`. It will setup the jekyll watch task and serve the site
on gui.local:4000.


# Updating

Add posts to \_post directory. The chronological order is not thoroughly
respected and is often slightly manipulated to achieve a better project
ordering (it might make sense to use jekyll's collections, one day).

To insert images and files, add file to assets folder and use 
`{% image_path [PATH_TO_IMAGE] %}`. Other files should be inserted with
`{% asset_path [PATH_TO_ASSET] %}`. `image_path` is currently only an
alias for `asset_path`, but it might change sometime in the future.

To embed soundcloud audio, use `{% soundcloud_embed [SOUNDCLOUD_AUDIO_ID] %}`.
One can see the audio ID by going to the soundcloud audio page > share > embed >
copy iframe embed code.

# Plugins

There are two plugins that add the assets tags and the soundcloud embed tag.
