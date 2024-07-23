require 'rails_helper'

RSpec.describe Project, type: :model do
  before :each do 

  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :git_repo }
    it { should validate_presence_of :tech }
    it { should validate_presence_of :description }
  end

  it '#alphabetical' do

  end

  it '#oldest_first' do

  end

  it '#sort_by_type' do
  
  end
end