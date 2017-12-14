require 'rails_helper'

describe "Viewing an individual event" do
  before { login_as user }

  let!(:user) { create :user }
  let!(:event) { create :event, user: user }
  # let!(:category) { create :category, event: event}

  it "shows the event's details" do
    visit event_path(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.capacity)
    expect(page).to have_text(event.starts_at.to_formatted_s(:rfc822))
    expect(page).to have_text(event.ends_at.to_formatted_s(:rfc822))
    expect(page).to have_text(event.description)
    # expect(page).to have_text(event.categories)
  end
end
