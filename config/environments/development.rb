Myflix::Application.configure do
  config.cache_classes = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  config.eager_load = false

  # mailcatcher
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = { :host => "localhost", :port => 1025 }

  # Bullet
  config.after_initialize do
    Bullet.enable = true
    #Bullet.alert = true
    Bullet.bullet_logger = true
    Bullet.console = true
    if Socket.gethostname == 'macbook17.local'
      Bullet.growl = true
    else
      Bullet.growl = false
    end
    #Bullet.xmpp = { :account  => 'bullets_account@jabber.org',
    #                :password => 'bullets_password_for_jabber',
    #                :receiver => 'your_account@jabber.org',
    #                :show_online_status => true }
    Bullet.rails_logger = true
    #Bullet.airbrake = true
    Bullet.add_footer = true
  end

end
