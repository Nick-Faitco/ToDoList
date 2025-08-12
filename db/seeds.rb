# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require './config/constants'

Task.create!([
  { title: 'Eat a Healthy Breakfast',
    description: 'Breakfast is the most important meal of the day. You\'ve probably heard it before, and it\'s true: eating breakfast starts your metabolism.',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Stay Hydrated',
    description: 'Drinking enough water throughout the day is crucial for overall health and cognitive function.',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Take Breaks',
    description: 'Regular breaks, even short ones, can help prevent burnout and improve focus.',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Disconnect from Work',
    description: 'Make time to disconnect from work in the evening to allow for relaxation and recharge.',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Practice Mindfulness',
    description: 'Engage in activities like meditation or deep breathing exercises to manage stress and improve focus.',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Get Enough Sleep',
    description: 'Aim for 7-9 hours of quality sleep to support physical and mental well-being.',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Engage in Physical Activity',
    description: 'Incorporate exercise into your routine, even if it\'s just a short walk, to boost energy and mood. ',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Read',
    description: 'There is perhaps no better daily routine than reading. Like exercise, it comes with countless benefits; from reducing stress, to improving your memory.',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Journaling',
    description: 'Journaling can be whatever you need it to be – a place to sort out your thoughts, track your progress, or just let your mind wander.',
    completion_status: AppConstants::STATUS.PENDING },
  { title: 'Make bed',
    description: 'Prepare for the day by making your bed. It\'s a quick chore that will put you in a productive, organized frame of mind.',
    completion_status: AppConstants::STATUS.PENDING }
])
