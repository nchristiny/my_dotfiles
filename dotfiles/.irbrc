# Prompt
# IRB.conf[:PROMPT_MODE] = :SIMPLE
# Available Prompt modes
# :NULL
# :DEFAULT
# :CLASSIC
# :SIMPLE
# :INF_RUBY
# :XMP

# ri
def ri(*names)
  system(%{ri #{names.map {|name| name.to_s}.join(" ")}})
end

# A method for clearing the screen
def clear
  system('clear')
end
