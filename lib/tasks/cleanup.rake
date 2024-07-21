namespace :posts do
  desc 'Delete posts older than 24 hours'
  task delete_old_posts: :environment do
    Post.older_than_24_hours.destroy_all
  end
end