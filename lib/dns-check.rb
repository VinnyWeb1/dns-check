#-*- encoding: utf-8 -*-

require 'uri'
require 'json'
require 'time'

require 'dns-check/ext'
require 'dns-check/version'
require 'dns-check/errors'
require 'dns-check/util'
require 'dns-check/cli'

module DNSCheck extend self
  def config
    @config ||={
      :timeout          => 1,
      :indice_location  => URI.parse('https://public-dns.info/nameservers.json'),
      :indice_store     => "#{$PROG_PATH}/db/indice",
      :show_ns          => false,
      :no_recursion     => false,
      :size             => 10,
      :sep              => '|'
    }
  end

  def config=(opts)
    @config = opts
  end
end
