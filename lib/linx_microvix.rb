# encoding: utf-8

require 'typhoeus'

require 'linx_microvix/config'
require 'linx_microvix/errors'
require 'linx_microvix/request'
require 'linx_microvix/version'

# lib/linx_microvix
module LinxMicrovix
  def self.configure
    yield Config
  end
end
