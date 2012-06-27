module Jekyll
  require 'sass'
  class SassConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /scss/i
    end

    def output_ext(ext)
      '.css'
    end

    def convert(content)
      begin
        puts "Perfoming Sass conversion"
        engine = Sass::Engine.new(content, :syntax => :scss)
        engine.render
      rescue StandardError => e
        puts "Sass error: #{e.message}"
      end
    end
  end
end
