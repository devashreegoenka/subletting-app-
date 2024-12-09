namespace :db do
  desc "Load sample data into the database"
  task sample_data: :environment do
    User.create([
  { name: "Alice Johnson", email: "alice@example.com", password: "password123" },
  { name: "Bob Smith", email: "bob@example.com", password: "password123" },
  { name: "Charlie Lee", email: "charlie@example.com", password: "password123" }
])


Apartment.create([
  { 
    title: "Cozy Downtown Apartment", 
    description: "A beautiful and modern apartment in the heart of the city, perfect for young professionals.", 
    address: "123 Main St", 
    city: "Chicago", 
    state: "IL", 
    zip_code: "60601", 
    rent: 1500, 
    availability_start_date: Date.today + 30, 
    availability_end_date: Date.today + 100, 
    user_id: 1 
  },
  { 
    title: "Spacious Midtown Condo", 
    description: "A large and luxurious condo with stunning city views, located near major attractions.", 
    address: "456 Oak Ave", 
    city: "New York", 
    state: "NY", 
    zip_code: "10001", 
    rent: 2500, 
    availability_start_date: Date.today + 60, 
    availability_end_date: Date.today + 180, 
    user_id: 2 
  },
  { 
    title: "Modern Bay Area Loft", 
    description: "A sleek and stylish loft in a prime location, ideal for tech enthusiasts and creatives.", 
    address: "789 Pine Rd", 
    city: "San Francisco", 
    state: "CA", 
    zip_code: "94101", 
    rent: 3500, 
    availability_start_date: Date.today + 90, 
    availability_end_date: Date.today + 250, 
    user_id: 3 
  }
])

ApartmentImage.create([
  { image_url: "https://images.app.goo.gl/9SoXB8kpSFx2S9Pz5", apartment_id: 1 },
  { image_url: "https://images.app.goo.gl/rvSNuyhsTinm37Lx9", apartment_id: 2 },
  { image_url: "https://images.app.goo.gl/VmXjHjb5tfHoNYds8", apartment_id: 3 }
])

Inquiry.create([
  { messaage: "Is this apartment still available?", apartment_id: 1, asker_id: 2 },
  { messaage: "Can I schedule a viewing for next week?", apartment_id: 2, asker_id: 3 },
  { messaage: "Is the rent negotiable?", apartment_id: 3, asker_id: 1 }
])

    puts "Sample data loaded!"
  end
end
