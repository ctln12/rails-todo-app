# frozen_string_literal: true

puts 'Cleaning database...'
Todo.destroy_all

puts 'Creating todos...'
Todo.create(
  title: 'Laundry',
  details: 'Do not mix colors!'
)
Todo.create(
  title: 'Studying',
  details: 'A lot of flashcard to do',
  completed: true
)
