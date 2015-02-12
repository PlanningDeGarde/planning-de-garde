require 'spec_helper'

describe PlanningDeGarde::User do

  describe ":me" do

    before(:each) do
      VCR.use_cassette "me" do
        @user = @api.me
      end
    end

    subject(:user) { @user }

    it { expect(user.email).to eq("test@gmail.com") }

  end

end