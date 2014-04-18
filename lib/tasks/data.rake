namespace :data do
  desc "Feeds the data!"

  task :feed => :environment do
    require "#{Rails.root}/lib/krossover.rb"
    Krossover.new
  end
end