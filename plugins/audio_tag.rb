# Title: Simple Audio tag for Jekyll
# Author: Sven Pfleiderer http://blog.roothausen.de
# Description: Easily output HTML5 audio
#
# Syntax {% audio url/to/audio [, url/to/audio2] %}
#
# Example:
# {% audio http://site.com/audio.mp3, http://site.com/audio.ogg %}
#
# Output:
# <audio preload='none' controls>
#   <source src='http://site.com/audio.mp3' type='audio/mp3' />
#   <source src='http://site.com/audio.ogg' type='audio/ogg' />
# </audio>

require 'uri'

module Jekyll

  class AudioTag < Liquid::Tag

    UrlSyntax = /(((\s*,?)(https?:\/\/)(\S+))+)/
    VarSyntax = /((\.?(\w+))*)/

    def initialize(tag_name, markup, tokens)
      @markup = markup
      super
    end

    def render(context)
      output = super

      if @markup =~ UrlSyntax
        @audio = $1.split(",")
      elsif @markup =~ VarSyntax
        # Liquid does not expand variables on custom tags inside templates
        # so we need to look it up manually
        lookup = context[$1]
        if lookup.is_a?(Hash)
          @audio = lookup.values
        else
          @audio = Array(lookup)
        end
      end

      generate_html
    end

    private

    def generate_html
      if @audio
        player_html = "<audio preload='none' controls>"

        @audio.each do |audio_url|
          mime_type = get_mime_type(audio_url)
          player_html += "<source src='#{audio_url}' type='#{mime_type}' />"
        end

        player_html += "</audio>"
      else
        "Error processing input, Syntax: {% audio url/to/audio [, url/to/audio2] %}"
      end

    end

    def get_mime_type(audio)
      url = URI.parse(audio)
      case url.path
      when /.*\.ogg$/
        "audio/ogg"
      when /.*\.mp3$/
        "audio/mp3"
      when /.*\.m4a$/
        "audio/x-m4a"
      end
    end

  end
end

Liquid::Template.register_tag('audio', Jekyll::AudioTag)
