# frozen_string_literal: true

require_relative 'epub2mobi/version'

# Epub to Mobi file type converter
# It's based on calibre-ebook converter, so you need to install it
module Epub2mobi
  CONVERT_APP = ENV.fetch('CONVERT_APP', 'ebook-convert')
  private_constant :CONVERT_APP

  class ConverterMissingError < StandardError; end

  class << self
    def convert(from:, to:)
      raise ConverterMissingError unless app_installed?

      system "#{CONVERT_APP} #{from} #{to}"
    end

    private

    def app_installed?
      bin_path = `command -v #{CONVERT_APP}`.chomp
      File.exist? bin_path
    end
  end
end
