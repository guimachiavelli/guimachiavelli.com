module Jekyll
  class AssetPathTag < Liquid::Tag

    def initialize(tag_name, asset, tokens)
      super
      @asset = asset
    end

    def render(context)
        base = context.registers[:site].config['baseurl']
        assets_path = context.registers[:site].config['assets']
        "#{base}/#{assets_path}/#{@asset}"
    end
  end
end

Liquid::Template.register_tag('asset_path', Jekyll::AssetPathTag)
Liquid::Template.register_tag('image_path', Jekyll::AssetPathTag)
