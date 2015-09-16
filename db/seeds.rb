# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

task_words = %w(build ruby bundler errors ughh rake what is going on how works linenumber stacktrace sleep coffee caffeine chris shhhhhh)

30.times do |n|
  task = 5.times.map { task_words.sample }.join(' ')
  Taskmanager.create({ task: task })
end
