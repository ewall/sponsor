# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sponsor_session',
  :secret      => '5eaeefc28221564418a022af77f0a50592610b39b2ec0e2fa7ada45dec12c2f3e5cb95daab372979b07ff99025144ab586cdd0b6ec9ab9ab3ccf081b63cc92e2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
