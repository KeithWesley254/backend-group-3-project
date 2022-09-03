puts "🌱 Seeding greatness..."

150.times do
    seeded_students = Student.create(
        name: Faker::Name.name,
        race: Faker::JapaneseMedia::DragonBall.race,
        planet: Faker::JapaneseMedia::DragonBall.planet,
        course_id: rand(1..7),
        teacher_id: rand(1..20)
    )
end

puts "✅ Done seeding!"