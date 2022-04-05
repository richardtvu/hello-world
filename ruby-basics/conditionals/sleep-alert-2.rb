status = ["awake", "tired"].sample
command = if status == "awake" then "Be productive!" else "Go to sleep!" end

puts command
