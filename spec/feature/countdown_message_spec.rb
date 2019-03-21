# User story 2: Countdown
# -----------------------
# As a user,
# So that I can count down to my celebration,
# I want to see how many days there are until my birthday.

require "date"

describe "CountdownMessage" do
  it "displays a countdown message" do
    visit("/")
    countdown = 3
    today = DateTime.parse(Time.now.strftime("%F")).to_date
    birthday_date = DateTime.parse(Time.now.strftime("%F")).to_date + countdown
    fill_in("name", with: "Matt")
    fill_in("birthday", with: birthday_date)
    click_on("Submit")
    expect(page).to have_content "Your birthday is in #{countdown} days, Matt!"
  end
end