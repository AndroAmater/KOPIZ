# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(id: 1,
            email: "admin@admin.admin",
            username: "Admin",
            password: "topsecret",
            password_confirmation: "topsecret")

Context.create!(context_id: "meeting")
Context.create!(context_id: "communication")
Context.create!(context_id: "information work")
Context.create!(context_id: "knowledge work")
Context.create!(context_id: "learning")
Context.create!(context_id: "errand")
Context.create!(context_id: "chore")

Priority.create!(priority_id: "top")
Priority.create!(priority_id: "high")
Priority.create!(priority_id: "normal")
Priority.create!(priority_id: "low")

ReviewPeriod.create!(review_period_id: "weekly")
ReviewPeriod.create!(review_period_id: "monthly")
ReviewPeriod.create!(review_period_id: "quarterly")
ReviewPeriod.create!(review_period_id: "yearly")

Status.create!(status_id: "active")
Status.create!(status_id: "completed")
Status.create!(status_id: "abandoned")
Status.create!(status_id: "next_project")

5.times do |index|
  Project.create!(name: "Project #{index}",
                description: "I am describing project #{index}!",
                user_id: 1)
end

10.times do |index|
  5.times do |i|
    ProjectPhase.create!(name: "Project phase #{i}",
                        description: "I am describing project phase #{i}!",
                        project_id: index,
                        user_id: 1)
  end
end

10.times do |index|
  10.times do |i|
    ii = index * i
    Task.create!(name: "Task #{ii}.",
                description: "I am describing task {index}!",
                due_date: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
                project_phase_id: i+1,
                context_id: 1,
                priority_id: 1,
                review_period_id: 1,
                status_id: 1,
                user_id: 1)
  end
end
