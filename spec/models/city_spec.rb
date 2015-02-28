require 'rails_helper'

RSpec.describe City, :type => :model do
  before(:each) { @city = City.new(name: 'Krakow', short_name: 'Krk') }
  subject { @city }

  it { should respond_to(:name, :short_name) }

  it "#name should return Krakow" do
    expect(@city.name).to match 'Krakow'
  end

  it "#short_name should return Krk" do
    expect(@city.short_name).to match 'Krk'
  end

end
