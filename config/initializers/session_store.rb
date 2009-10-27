# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_auction_example_session',
  :secret      => 'f186dae3f91fab3d1b6a2893445d92df22ef706884b261d99dc83fffda6422bee8f3ce419c8d39bc4faf5e93c158185bf4c85e8ee83943fbe48e2d59f88d4dff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
