puts "Speak objects into existence! \n"

class Parser
  def self.parse inp
    if inp == "quit"
      exit
    end

    File.open("buffer.txt", "a+") do |f|
      f << "#{inp}\n"
    end

  end
end

# REPL
# Input: 'subject verb action'
loop do
  putc '>'
  inp = $stdin.gets.chomp
  options = Parser.parse inp
end
