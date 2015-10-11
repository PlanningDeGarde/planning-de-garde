module PlanningDeGarde
  class Configuration
    attr_accessor :app_id, :app_secret, :site

    def initialize
      @site = "https://api.planning-de-garde.fr/"
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end
end