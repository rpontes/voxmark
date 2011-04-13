ActiveRecord::Base.transaction do

  User.create!(
    :full_name => "Site Admin",
    :email => "admin@cursorails.net",
    :password => "123456",
    :password_confirmation => "123456"
  )

  1.upto 10 do |i|
    Asset.create!(
    :title => "Image #{i}",
    :document => File.open(Rails.root.join("public/images/asset#{i}.png"))
    )
  end

  %w(Rails Ruby Agile Metaprogramming Design TDD BDD).each do |name|
    Category.create!(:name => name)
  end

  Post.create!(
  :title        => "Rails 3.0 RC",
  :categories   => [Category.first, Category.last],
  :author       => User.first,
  :draft        => false,
  :published_at => Time.now,

  :excerpt => %{
    High off Baltimore Pandemic and Yellow Tops,
    I believe we promised a release candidate shortly after RailsConf.
    As things usually go in open source, we gorged ourselves on fixes and improvements instead.
  },

  :body    => %{
    <p>High off Baltimore Pandemic and Yellow Tops, I believe we promised a release candidate shortly after RailsConf.
    As things usually go in open source, we gorged ourselves on fixes and improvements instead.
    But all to your benefit. We’ve had "842 commits by 125 authors":http://github.com/rails/rails/compare/v3.0.0.beta4...master
    since the release of the last beta!</p>

    <p>Now it’s time to just say good is good enough, otherwise we could keep on with this forever.
    So please welcome the Rails 3 release candidate!
    You install, as always, with *gem install rails --pre*.</p>

    <p>Most of the fixes have been of minor significance, but we did manage to dramatically speed up Rails 3
    development and startup speed for larger applications
    (Basecamp went from insufferable to about 2.3 levels of enjoyment).</p>

    <p>Speed is now pretty good across the board except for part of Arel that Active Record now depends on.
    We’ll be making sure we get performance of Active Record back to at least 2.3 levels before release.</p>
  }
  )


end
