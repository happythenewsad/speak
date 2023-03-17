lines = IO.readlines("buffer.txt", chomp: true)

module OurObjects
end

lines.each do |line|
  subject, verb, action = line.split
  subject.capitalize!

  if OurObjects.constants.map{|c| c.to_s }.include? subject
    klass = OurObjects.const_get(subject)
  else
    klass = OurObjects.const_set(subject, Class.new)
  end

  klass.class_eval do
    define_method(verb.to_sym) { puts action }
  end

end