# frozen_string_literal: true

require_relative 'epub2mobi/version'

# Epub to Mobi file type converter
# It's based on calibre-ebook converter, so you need to install it
module Epub2mobi
  CONVERT_APP = ENV.fetch("CONVERT_APP", "/usr/local/bin/ebook-convert")
  private_constant :CONVERT_APP

  def self.convert(from:, to:)
    system "#{CONVERT_APP} #{from} #{to}"
  end
end
