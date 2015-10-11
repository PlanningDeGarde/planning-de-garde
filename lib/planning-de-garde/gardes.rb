module PlanningDeGarde
  class Gardes

    attr_reader :collection, :params

    def initialize(params)
      @collection = []
      @params = params
    end

    def add_garde(garde)
      @collection << garde
    end

    def to_a
      collection
    end

    def self.where(client, params)

      response = client.get '/gardes', params

      if response.status == 200
        json = JSON.parse response.body

        gardes = self.new(params)

        json.each do |garde_info|
          gardes.add_garde Garde.new(garde_info)
        end

        gardes
      end

    end

  end
end