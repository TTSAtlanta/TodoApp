require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'has a valid factory' do
  	expect(build(:homework)).to be_valid
  end

  it 'is valid with required attributes' do
    task = create(:email)
    expect(task).to be_valid
  end

  it 'is invalid without Due Date' 

  it 'belongs to User'
end
