class Sparky
  class Name
    require File.expand_path(File.dirname(__FILE__) + '/names/first_names')
    require File.expand_path(File.dirname(__FILE__) + '/names/last_names')

    def self.create
      FIRST_NAMES.split("\n").first
      "#{FIRST_NAMES.split("\n")[rand(600)]} #{LAST_NAMES.split("\n")[rand(600)]}"
    end
  end
end