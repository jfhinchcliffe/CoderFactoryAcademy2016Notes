require 'rails_helper'

RSpec.describe Region, type: :model do
  it 'should allow valid values' do
    expect(Region.new(name: 'Victoria', country_code: 'au')).to be_valid
    expect(Region.new(name: 'Victoria', country_code: 'AU')).to be_valid
  end

  it 'should downcase country code' do
    expect(Region.create!(name: 'Victoria', country_code: 'AU').country_code).to eq('au')
  end

  it 'should not allow empty values' do
    region = Region.new(name: 'Victoria', country_code: 'asd')
    expect(Region.new(name: 'Victoria', country_code: 'asd')).to_not be_valid
    expect(Region.new(name: '', country_code: 'asd')).to_not be_valid
    expect(Region.new).to_not be_valid
  end

  it 'should not allow invalid country codess' do
    expect(Region.new(name: 'Victoria', country_code: 'll')).to_not be_valid
    expect(Region.new(name: 'Victoria', country_code: 'zz')).to_not be_valid
    expect(Region.new(name: 'Victoria', country_code: 'a')).to_not be_valid
  end

end
