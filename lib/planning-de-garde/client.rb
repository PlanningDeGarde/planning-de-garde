module PlanningDeGarde
  class Client

    attr_reader :current_token

    def initialize(current_token)
      @current_token = current_token
    end

    def get(url, params = {})
      oauth2_access_token.get(api_url(url), params)
    end

    private

      def oauth2_client
        @oauth2_client ||= OAuth2::Client.new(app_id, app_secret, site: site)
      end

      def oauth2_access_token
        @oauth2_access_token ||= OAuth2::AccessToken.new(oauth2_client, current_token)
      end

      def app_id
        PlanningDeGarde.configuration.app_id
      end

      def app_secret
        PlanningDeGarde.configuration.app_secret
      end

      def site
        PlanningDeGarde.configuration.site
      end

      def api_url(url)
        "/v2#{url}.json"
      end

  end
end