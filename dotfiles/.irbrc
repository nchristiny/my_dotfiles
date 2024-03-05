# Is default behavior in Ruby 3.1 and later.
# Leaving commented for cargo culture archaeologists
# Auto-complete for method names and such
# require 'irb/completion'

# This gem "may not work on Ruby versions 2.4 or older"
# Anyhoo syntax highlighting is also now default behavior
# require awesome_print
# AwesomePrint.irb!

# Prompt
IRB.conf[:PROMPT_MODE] = :SIMPLE
# Available Prompt modes
# :NULL
# :DEFAULT
# :CLASSIC
# :SIMPLE
# :INF_RUBY
# :XMP

# Is now default behavior
# IRB.conf[:AUTO_INDENT] = true

# A method for clearing the screen
def clear
  system('clear')
end

puts ("Loading ~/.irbrc a file that loads everytime you load irb")