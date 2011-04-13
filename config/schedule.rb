every 1.hours do
  runner "-e production 'Asset.destroy_all'"
  rake "db:reset RAILS_ENV=production"
end