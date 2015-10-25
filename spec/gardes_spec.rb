require 'spec_helper'

describe PlanningDeGarde::Garde do

  describe ":all" do

    before(:each) do
      VCR.use_cassette "find_gardes" do
        @gardes = @api.gardes
      end
    end

    subject(:gardes) { @gardes }

    it { expect(gardes.collection.size).to eq 57 }

    context 'list' do

      subject(:garde) { @gardes.to_a.first }

      it { is_expected.to be_a PlanningDeGarde::Garde }

      it { expect(garde.started_on).to eq(Date.new(2015,05,05)) }
      it { expect(garde.color).to eq("#50D2C2") }
      it { expect(garde.user.first_name).to eq("Test") }

      it { expect(garde.planning.name).to eq("Planning 2") }
      it { expect(garde.planning.started_on).to eq(Date.new(2015,05,04)) }
      it { expect(garde.planning.ended_on).to eq(Date.new(2015,11,01)) }

      it { expect(garde.line.name).to eq("Ligne 1") }

    end

  end

end