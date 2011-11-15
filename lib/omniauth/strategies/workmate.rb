require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Workmate < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://workmateapp.com',
        :authorize_url => 'https://workmateapp.com/oauth/authorize',
        :token_url => 'https://workmateapp.com/oauth/token'
      }

      def request_phase
        super
      end

      uid { raw_info['id'] }

      info do
        {
          'email' => raw_info['email'],
          'name' => raw_info['name']
        }
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.get('/user').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'workmate', 'Workmate'
