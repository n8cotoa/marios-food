require 'rails_helper'

describe Product do
  it { should have_many :reviews }
  it { should validate_presence_of :name}
  it { should validate_presence_of :cost}
  it { should validate_presence_of :origin_country}
  it { should validate_numericality_of :cost}
end