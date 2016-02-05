# how many days of Summer in June 2013
june_days = 30 - 21 + 1 # June has 30 days, Summer starts June 21
july_days = 31          # July has 31 days
august_days = 31        # August has 31 days
september_days = 21     # Summer ends on September 21
total_days = june_days + july_days + august_days + september_days
days_prompt = "days of Summer in"

print days_prompt, "June 2013:\n"
puts june_days
print days_prompt, "July 2013:\n"
puts july_days
print days_prompt, "August 2013:\n"
puts august_days 
print days_prompt, "September 2013:\n"
puts september_days 
print "total ", days_prompt, "2013:", total_days