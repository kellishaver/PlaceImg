module Placeimg
  module ViewHelpers

    require 'base64' unless defined?(Base64)
    require 'RMagick' unless defined?(Magick)
    include Magick

    def placeholder(details = nil)
      details         ||= {}
      details[:bg]    ||= '#ccc'
      details[:fg]    ||= '#777'
      details[:h]     ||= 250
      details[:w]     ||= 250
      details[:class] ||= ""
      details[:id]    ||= ""

      details[:h] = details[:h].to_i
      details[:w] = details[:w].to_i

      img = Image.new(details[:w], details[:h]) {
        self.background_color = details[:bg]
        self.format = "PNG"
      }

      if details[:h] > details[:w]
        font_size = (details[:w] / 5).ceil
      else
        font_size = (details[:h] / 5).ceil
      end

      if font_size >= 10
        txt = Draw.new

        img.annotate(txt, 0,0,0,0, "#{details[:w].to_s}x#{details[:h].to_s}") {
          txt.gravity = Magick::CenterGravity
          txt.pointsize = font_size
          txt.fill = details[:fg]
        }
      end

      data_uri = Base64.encode64(img.to_blob).gsub(/\n/, "")
      output = '<img width="%s" height="%s" alt="placeholder" src="data:image/png;base64,%s" class="%s" id="%s">' % [details[:w].to_s, details[:h].to_s, data_uri, details[:class], details[:id]]
      raw output
    end

  end
end