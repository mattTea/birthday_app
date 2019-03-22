# User story 2: Countdown
# -----------------------
# As a user,
# So that I can count down to my celebration,
# I want to see how many days there are until my birthday.

require "date"

describe "Countdown Message" do
  it "displays a birthday in 3 days countdown message" do
    birthday_in_3_days
    expect(page).to have_content "Your birthday is in 3 days, Matt!"
  end

  it "displays a birthday tomorrow countdown message" do
    birthday_tomorrow
    expect(page).to have_content "Your birthday is tomorrow, Matt!"
  end
end


# User story 3: Happy birthday!
# -----------------------------
# As I user,
# So that I feel good on my birthday,
# I want to receive a happy birthday message.

describe "Happy Birthday Message" do
  it 'displays a happy birthday message' do
    birthday_today
    expect(page).to have_content "Happy birthday Matt!"
  end
end

