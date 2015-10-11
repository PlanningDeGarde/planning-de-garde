module PlanningDeGarde
  class User
    include Virtus.model

    attribute :email, String
    attribute :first_name, String
    attribute :last_name, String

    def self.me(client)

      response = client.get '/me'

      if response.status == 200
        json = JSON.parse response.body

        self.new(json)
      end

    end

  end
end