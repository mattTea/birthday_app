# User story 1: Enter details
# ---------------------------
# As a user
# So that I can see personalised messages,
# I want to be able to enter my name and birthday.

describe "Homepage" do
  it "displays a form for user to enter details" do
    visit("/")
    expect(page).to have_selector "form"
  end

  it "displays name field in form" do
    visit("/")
    expect(page).to have_selector "form input[name='name']"
  end

  it "displays birthday field in form" do
    visit("/")
    expect(page).to have_selector "form input[name='birthday']"
  end

end