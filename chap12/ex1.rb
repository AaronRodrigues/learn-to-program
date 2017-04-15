# One billion seconds... Find out the exact second you were born (if you can).
# Figure out when you will turn (or perhaps when you did turn?) one billion
# seconds old. Then go mark your calendar.

dob = Time.mktime(1984, 10, 06, 23, 53)
puts dob + (1_000_000_000)