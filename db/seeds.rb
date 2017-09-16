# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@admin.admin",
            username: "Admin",
            password: "topsecret",
            password_confirmation: "topsecret")

Context.create(context: "meeting")
Context.create(context: "communication")
Context.create(context: "information work")
Context.create(context: "knowledge work")
Context.create(context: "learning")
Context.create(context: "errand")
Context.create(context: "chore")

Priority.create(priority_id: "top")
Priority.create(priority_id: "high")
Priority.create(priority_id: "normal")
Priority.create(priority_id: "low")

ReviewPeriod.create(review_period_id: "weekly")
ReviewPeriod.create(review_period_id: "monthly")
ReviewPeriod.create(review_period_id: "quarterly")
ReviewPeriod.create(review_period_id: "yearly")

Status.create(status_id: "active")
Status.create(status_id: "completed")
Status.create(status_id: "abandoned")
Status.create(status_id: "next_project")

5.times do |index|
  Project.create(name: "Project #{index}",
                description: "I am describing project #{index}!",
                user_id: 1)
end

5.times do |index|
  5.times do |i|
    ProjectPhase.create(name: "Project phase #{i}",
                        description: "I am describing project phase #{i}!",
                        project_id: index,
                        user_id: 1)
  end
end

50.times do |index|
  Task.create!(name: "Task {index}",
              description: "I am describing task {index}!",
              due_date: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
              project_phase_id: 1,
              context_id: 1,
              priority_id: 1,
              review_period_id: 1,
              status_id: 1,
              user_id: 1)
end
