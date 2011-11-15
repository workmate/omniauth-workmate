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
          'full_name' => raw_info['full_name']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/users/me').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'workmate', 'Workmate'
