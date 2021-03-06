# Data
DRIVER_ID,DATE,COST,RIDER_ID,RATING
DR0004,3rd Feb 2016,5,RD0022,5
DR0001,3rd Feb 2016,10,RD0003,3
DR0002,3rd Feb 2016,25,RD0073,5
DR0001,3rd Feb 2016,30,RD0015,4
DR0003,4th Feb 2016,5,RD0066,5
DR0004,4th Feb 2016,10,RD0022,4
DR0002,4th Feb 2016,15,RD0013,1
DR0003,5th Feb 2016,50,RD0003,2
DR0002,5th Feb 2016,35,RD0066,3
DR0004,5th Feb 2016,20,RD0073,5
DR0001,5th Feb 2016,45,RD0003,2

# Find
data_match = /(DR.*),(.*),(.*),(RD.*),(.*)/

# Replace
{\n  driver_id: "$1",\n  date: "$2",\n  cost: $3,\n  rider_id: "$4",\n  rating: $5,\n},

# Result
{
  driver_id: "DR0004",
  date: "3rd Feb 2016",
  cost: 5,
  rider_id: "RD0022",
  rating: 5,
},
