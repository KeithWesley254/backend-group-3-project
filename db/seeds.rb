puts "🌱 Seeding greatness..."

150.times do
    seeded_students = Student.create(
        name: Faker::Name.name,
        race: Faker::JapaneseMedia::DragonBall.race,
        planet: Faker::JapaneseMedia::DragonBall.planet,
        course_id: rand(1..7),
        teacher_id: rand(1..10)
    )
end

7.times do
    seeded_courses = Course.create(
        course_name: Faker::Commerce.department,
        fees_amount: rand(7000..10000),
        department: Faker::Commerce.department,
        course_period: rand(6..12),
        total_units: rand(25..30)
    )
end

10.times do
    seeded_teachers = Teacher.create(
        name: Faker::Name.name,
        street_address: Faker::Address.street_address,
        specialisation: ['Area of Dmg', 'Single target Dmg', 'Speed training', 'Burst Dmg', 'Core Attr training'].sample,
        salary: rand(4000..8000)
    )
end

puts "✅ Done seeding!"