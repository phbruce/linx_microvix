# encoding: utf-8

module LinxMicrovix
  # lib/linx_microvix/request.rb
  class Request
    def initialize(command_name, parameters, response_format = 'csv')
      @command_name = command_name
      @parameters = parameters
      @response_format = response_format
    end

    def run
      url = 'http://webapi.microvix.com.br/1.0/api/integracao'
      Typhoeus::Request.new(url, method: :post, body: body_request).run
    end

    private

    def authenticate
      config = LinxMicrovix::Config
      "<Authentication user=\"#{config.user}\" password=\"#{config.pass}\"/>"
    end

    def build_parameters(parameters)
      parameters.each_with_object('') do |(key, value), parameters_string|
        parameters_string << "<Parameter id=\"#{key}\">#{value}</Parameter>"
      end
    end

    def body_request
      '<LinxMicrovix>'\
        "#{authenticate}"\
        "<ResponseFormat>#{@response_format}</ResponseFormat>"\
        '<Command>'\
          "<Name>#{@command_name}</Name>"\
          "<Parameters>#{build_parameters(@parameters)}</Parameters>"\
        '</Command>'\
      '</LinxMicrovix>'
    end
  end
end
