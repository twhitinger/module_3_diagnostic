require 'rails_helper'

RSpec.describe MuckLuckService, vcr: true do
  context "#legislators" do

    it "can filter on params" do
       # here is where the  VCR.use_cassette line goes but avoided with the vcr true flag

      #  legislators = SunlightService.new.legislators(gender: "F")
      #   legislator = legislators.first
       #
      #   expect(legislators.count).to eq(20)
      #   expect(:first_name.in?(legislator.keys)).to be_truthy
      #   expect(legislator[:first_name].class).to eq(String)
      #   expect(legislator[:first_name]).to eq("Joni")
      #   expect(legislator[:last_name]).to eq("Ernst")
    end
  end
end
