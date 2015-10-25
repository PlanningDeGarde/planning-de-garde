module PlanningDeGarde
  class Garde
  	include Virtus.model

  	attribute :started_on, Date
  	attribute :color, String
  	attribute :user, PlanningDeGarde::User
  	attribute :planning, PlanningDeGarde::Planning
  	attribute :line, PlanningDeGarde::Line

  end
end