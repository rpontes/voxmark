# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_help_session',
  :secret      => '9d8c1501716cc1ef3241322df50d4b0f36861baa2f9caa4a9e49fc2c8f81b35c6e88b1df3037e04b20a593b33e76dc148b06972639044f734b14f01a4ba11978'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
