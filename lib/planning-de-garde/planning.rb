module PlanningDeGarde
  class Planning
  	include Virtus.model

  	attribute :started_on, Date
  	attribute :ended_on, Date
  	attribute :name, String

  end
end