module PlanningDeGarde
  class API

    attr_reader :client

    def initialize(current_token)
      @client = Client.new(current_token)
    end

    def gardes(params = {})
      Gardes.where(client, params)
    end

    def me
      User.me(client)
    end

  end
end