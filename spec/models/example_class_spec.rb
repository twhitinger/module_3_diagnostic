require 'spec_helper'
require_relative '../../app/models/legislator'

RSpec.describe Legislator do
  it "has attributes" do
    raw_data = {:bioguide_id=>"E000295", :birthday=>"1970-07-01", :chamber=>"senate", :contact_form=>nil, :crp_id=>"N00035483", :district=>nil, :facebook_id=>"351671691660938", :fax=>nil, :fec_ids=>["S4IA00129"], :first_name=>"Joni", :gender=>"F", :govtrack_id=>"412667", :in_office=>true, :last_name=>"Ernst", :leadership_role=>nil, :lis_id=>"S376", :middle_name=>nil, :name_suffix=>nil, :nickname=>nil, :oc_email=>"Sen.Ernst@opencongress.org", :ocd_id=>"ocd-division/country:us/state:ia", :office=>"111 Russell Senate Office Building", :party=>"R", :phone=>"202-224-3254", :senate_class=>2, :state=>"IA", :state_name=>"Iowa", :state_rank=>"junior", :term_end=>"2021-01-03", :term_start=>"2015-01-06", :thomas_id=>"02283", :title=>"Sen", :twitter_id=>"SenJoniErnst", :website=>"http://www.ernst.senate.gov/public"}
    legislator = Legislator.new(raw_data)
    expect(legislator.name).to eq("Joni Ernst")
  end

  it "filters legislators by search parameters" do
    VCR.use_cassette("legislator.all_by") do
      legislators = Legislator.all_by(gender: "F")
      legislator = legislators.first

      expect(legislators.count).to eq(20)
      expect(legislator.first_name).to eq("Joni")
      expect(legislator.last_name).to eq("Ernst")
      expect(legislator.name).to eq("Joni Ernst")
    end
  end

end
