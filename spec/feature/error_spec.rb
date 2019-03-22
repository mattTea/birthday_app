describe "Error Page" do
  it "displays an error if no name entered" do
    no_name
    expect(page).to have_content "Please enter both your name and your birthday."
  end

  it "displays an error if no birthday entered" do
    no_birthday
    expect(page).to have_content "Please enter both your name and your birthday."
  end
end