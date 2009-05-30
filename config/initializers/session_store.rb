# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pacota_session',
  :secret      => '285b78fa25e16c335b5c39c3ae128de9c500cc84d9bdb60a6b3a28743f58c90ec95372d8d7403085fd133638eea3cc13ac163c84f6d53810982fa5426dad170a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
