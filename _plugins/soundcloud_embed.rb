require 'uri'

module Jekyll
  class SoundcloudEmbedTag < Liquid::Tag

    def initialize(tag_name, soundcloud_id, tokens)
      super
      @soundcloud_id = soundcloud_id.strip
    end

    def render(context)
        source = "https://w.soundcloud.com/player/?url=https://"
        source += "api.soundcloud.com/tracks/#{@soundcloud_id}"
        source += "&color=000bff&auto_play=false&"
        source += "hide_related=true&show_comments=false&"
        source += "show_user=false&show_reposts=false"
        source = URI.escape(source)

        "<iframe width='73.5%'
                 height='150'
                 scrolling='no'
                 frameborder='no'
                 src='#{ source }'></iframe>"
    end
  end
end

Liquid::Template.register_tag('soundcloud_embed', Jekyll::SoundcloudEmbedTag)
