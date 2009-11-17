class Sparky
  # Shortcut for Lorem.create
  #
  # Example:
  #   Lorem(:words, 10)
  def self.lorem (type = :sentences, count = 1)
    Lorem.create(type, count)
  end

  def self.name
    Name.create
  end
end
