require 'spec_helper'

describe PlanningDeGarde::User do

  describe ":me" do

    before(:each) do
      VCR.use_cassette "me" do
        @user = @api.me
      end
    end

    subject(:user) { @user }

    it { expect(user.first_name).to eq("Test") }
    it { expect(user.last_name).to eq("User") }
    it { expect(user.email).to eq("test.user@gmail.com") }
    it { expect(user.portable).to eq("+33612345678") }
    it { expect(user.speciality_name).to eq("Anesthésie-Réanimation") }
    it { expect(user.city_name).to eq("Lyon") }

  end

end