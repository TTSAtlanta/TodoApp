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

  feature 'Edit Task' do
  let(:user) { create(:user) }
  let(:task) { create(:homework) }

  scenario 'User edits task' do
    sign_in(user)
    visit task_path(task)
    expect(page).to have_content('complete homework')

    click_link("Edit")

    fill_in 'Name', with: 'Master Rspec!!!!!'
    fill_in "Priority", with: 1
    fill_in "Due date", with: DateTime.now
    select(task.user.email, from: 'task_user_id')

    click_button('Update Task')

    expect(current_path).to eq(task_path(task.id))

    expect(page).to have_content('Master Rspec!!!!!')
  end
end
end
