########################################################
# Step 1: Establish the layers

# In this section of the file, as a series of comments,
# create a list of the layers you identify.
# Which layers are nested in each other?
# Which layers of data "have" within it a different layer?
# Which layers are "next" to each other?

# Hash, arrays, array of hashes
########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and in this section
# determine what data structure each layer should have

########################################################
# Step 3: Make the data structure!

# Setup the entire data structure:
# based off of the notes you have above, create the
# and manually write in data presented in rides.csv
# You should be copying and pasting the literal data
# into this data structure, such as "DR0004"
# and "3rd Feb 2016" and "RD0022"

rides = [{driver_id:"DR0001", date:["3rd Feb 2016", "3rd Feb 2016", "5th Feb 2016"], cost:[10, 30, 45], ride_id:["RD0003","RD0015","RD0003"], rating:[3, 4, 2]},
         {driver_id:"DR0002", date:["3rd Feb 2016", "4th Feb 2016", "5th Feb 2016"], cost:[25, 15, 35], ride_id:["RD0073","RD0013","RD0066"], rating:[5, 1, 3]},
         {driver_id:"DR0003", date:["3rd Feb 2016", "5th Feb 2016"], cost:[5, 50], ride_id:["RD0066","RD0003"], rating:[5, 2]},
         {driver_id:"DR0004", date:["3rd Feb 2016", "4th Feb 2016", "5th Feb 2016"], cost:[5, 10, 20], ride_id:["RD0022","RD0022","RD0073"], rating:[5, 4, 5]}]


########################################################
# Step 4: Total Driver's Earnings and Number of Rides

# Use an iteration blocks to print the following answers:
# - the number of rides each driver has given
# - the total amount of money each driver has made
# - the average rating for each driver
# - Which driver made the most money?
# - Which driver has the highest average rating?
max_earning = 0
max_earning_driver = ""
max_rating = 0
max_rating_driver = ""
rides.each do |ride|
  avg_rating = (ride[:rating].sum/ride[:rating].length.to_f).round(1)
  puts "Driver #{ride[:driver_id]} has given #{ride[:date].length} rides, has made $#{ride[:cost].sum}, and has a average rating of #{avg_rating}."
  if ride[:cost].sum > max_earning
    max_earning = ride[:cost].sum
    max_earning_driver = ride[:driver_id]
  end
  if avg_rating > max_rating
    max_rating = avg_rating
    max_rating_driver = ride[:driver_id]
  end
end
puts "#{max_earning_driver} has made the most money."
puts "#{max_rating_driver } has the highest average rating."
