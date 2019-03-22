def birthday_in_3_days
  visit("/")
  today = DateTime.parse(Time.now.strftime("%F")).to_date
  birthday_date = DateTime.parse(Time.now.strftime("%F")).to_date + 3
  fill_in("name", with: "Matt")
  fill_in("birthday", with: birthday_date)
  click_on("Go!")
end

def birthday_tomorrow
  visit("/")
  today = DateTime.parse(Time.now.strftime("%F")).to_date
  birthday_date = DateTime.parse(Time.now.strftime("%F")).to_date + 1
  fill_in("name", with: "Matt")
  fill_in("birthday", with: birthday_date)
  click_on("Go!")
end

def birthday_today
  visit("/")
  today = DateTime.parse(Time.now.strftime("%F")).to_date
  birthday_date = DateTime.parse(Time.now.strftime("%F")).to_date
  fill_in("name", with: "Matt")
  fill_in("birthday", with: birthday_date)
  click_on("Go!")
end

def no_name
  visit("/")
  today = DateTime.parse(Time.now.strftime("%F")).to_date
  birthday_date = DateTime.parse(Time.now.strftime("%F")).to_date
  fill_in("birthday", with: birthday_date)
  click_on("Go!")
end

def no_birthday
  visit("/")
  today = DateTime.parse(Time.now.strftime("%F")).to_date
  fill_in("name", with: "Matt")
  click_on("Go!")
end