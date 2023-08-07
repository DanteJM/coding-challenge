1- The method solution is responsible for handling the problem's solution 

  name_lines = s.strip.split("\n")  => New lines of the string by splitting via a new line

  images => Array of array (2D)  having the name, city and date_time 

  city_groups => Hash of (key => values) here the key is the city and the value is (name, city and date_time)

  updated_names => Array of having the new and updated name according to the requirements

Example:
input_string = <<~EOS
  photo.jpg, Krakow, 2013-09-05 14:08:15
  Mike.png, London, 2015-06-20 15:13:22
  myFriends.png, Krakow, 2013-09-05 14:07:13
  Eiffel.jpg, Florianopolis, 2015-07-23 08:03:02
  pisatower.jpg, Florianopolis, 2015-07-22 23:59:59
  BOB.jpg, London, 2015-08-05 00:02:03
  notredame.png, Florianopolis, 2015-09-01 12:00:00
  me.jpg, Krakow, 2013-09-06 15:40:22
  a.png, Krakow, 2016-02-13 13:33:50
  b.jpg, Krakow, 2016-01-02 15:12:22
  c.jpg, Krakow, 2016-01-02 14:34:30
  d.jpg, Krakow, 2016-01-02 15:15:01
  e.png, Krakow, 2016-01-02 09:49:09
  f.png, Krakow, 2016-01-02 10:55:32
  g.jpg, Krakow, 2016-02-29 22:13:11
EOS

# How to call  solution function and check the result by using puts
result = solution(input_string)
puts result
