require 'rails_helper'

RSpec.describe Job, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :company }
    it { should validate_presence_of :location }
    it { should validate_presence_of :start_date }
    it { should validate_presence_of :description }
  end

  it "#sort_jobs" do
    
  end
end
