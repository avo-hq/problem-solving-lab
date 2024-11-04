Car.destroy_all  # Clear existing records to avoid duplicates

# Define some sample car makes and models
makes_and_models = [
  { make: "Toyota", model: "Corolla" },
  { make: "Honda", model: "Civic" },
  { make: "Ford", model: "Mustang" },
  { make: "Chevrolet", model: "Camaro" },
  { make: "Tesla", model: "Model S" },
  { make: "BMW", model: "3 Series" },
  { make: "Mercedes", model: "C-Class" },
  { make: "Audi", model: "A4" },
  { make: "Volkswagen", model: "Golf" },
  { make: "Hyundai", model: "Elantra" }
]

# Create 30 sample cars with random makes, models, and years
30.times do
  car = makes_and_models.sample  # Randomly select a make and model
  Car.create(
    make: car[:make],
    model: car[:model],
    year: rand(2000..2023)  # Randomly select a year between 2000 and 2023
  )
end

puts "30 cars created!"