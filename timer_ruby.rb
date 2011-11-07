$base_studing_unit = 30*60
$base_break_unit = 5*60
$medium_break_unit = 30*60
$long_break_unit = 60*60

$total_hours_studied = 0
$for_every_four_base_studing_units_one_medium_break_unit = 0
#$for_every_eight_base_studing_units_one_long_break_unit = 0

tm = Time.now
time_vatiable = Time.local(2011,"Nov",5,07,00,00)

#ttime.ctime
def output_time_units(ttime)
  day = ttime.day
  hour = ttime.hour
  minute = ttime.min
  while day == ttime.day
    print "Study: ", ttime.hour,":#{ttime.min <= 9 ? "0" : ""}", ttime.min, " -->  " if ((ttime + $base_studing_unit).day == ttime.day) 
    ttime += $base_studing_unit
    $for_every_four_base_studing_units_one_medium_break_unit +=1
    $total_hours_studied += 1
    break if day != ttime.day
    if ttime.min > 9 
      print ttime.hour,":",ttime.min,"\n"
    else
      print ttime.hour,":0",ttime.min,"\n"
    end
		
    case $for_every_four_base_studing_units_one_medium_break_unit
    when 4
      print "Break: #{$medium_break_unit/60}	", ttime.hour,":#{ttime.min <= 9 ? "0" : ""}",ttime.min, " -->  "
      ttime	+= $medium_break_unit
    when 8
      print "Break: #{$long_break_unit/60}	", ttime.hour,":#{ttime.min <= 9 ? "0" : ""}",ttime.min, " -->  "
      ttime += $long_break_unit
      $for_every_four_base_studing_units_one_medium_break_unit = 0
    else
      print "Break: #{$base_break_unit/60}	", ttime.hour,":#{ttime.min <= 9 ? "0" : ""}",ttime.min, " -->  "
      ttime += $base_break_unit
    end
    break if day != ttime.day
    print ttime.hour,":#{ttime.min <= 9 ? "0" : ""}",ttime.min,"\n"
		
  end
end

output_time_units(time_vatiable)
print "\nYou have studied a total of : ", ($total_hours_studied-1)/2.0, "hours"
	