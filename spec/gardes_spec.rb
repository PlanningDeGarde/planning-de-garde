require 'spec_helper'

describe PlanningDeGarde::Garde do

  describe ":all" do

    before(:each) do
      VCR.use_cassette "find_gardes" do
        @gardes = @api.gardes
      end
    end

    subject(:gardes) { @gardes }

    it { expect(gardes.collection.size).to eq 78 }

    context 'list' do

      subject(:garde) { @gardes.to_a.first }

      it { is_expected.to be_a PlanningDeGarde::Garde }

      it { expect(garde.started_on).to eq(Date.new(2015,07,31)) }

    end

  end

end