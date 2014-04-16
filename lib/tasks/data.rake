namespace :data do
  desc "Feeds the data!"

  task :feed => :environment do
    Krossover.new
  end
end