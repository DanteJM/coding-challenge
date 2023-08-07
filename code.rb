def solution(s)
  name_lines = s.strip.split("\n")
  images = []

  name_lines.each do |line|
    parts = line.split(', ')
    photo_name, city, date_time = parts[0], parts[1], parts[2]
    images << [photo_name, city, date_time]
  end

  city_groups = Hash.new { |hash, key| hash[key] = [] }

  images.each do |photo|
    city_groups[photo[1]] << photo
  end

  updated_names = []

  city_groups.each do |city, group|
    max_num_length = group.length.to_s.length

    group.sort_by! { |photo| photo[2] }

    group.each_with_index do |photo, index|
      photo_name, extension = photo[0].split('.')
      new_name = "#{city}#{(index + 1).to_s.rjust(max_num_length, '0')}.#{extension}"
      updated_names << new_name
    end
  end

  updated_names.join("\n")
end

# Test the function with the provided example
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

result = solution(input_string)
puts result
