# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eager_load_issue_session',
  :secret      => '8322c367cb8b286c4edb67d9844b82cfa3a54eb08be9de9f02b3b51d6d312045f0abdeae9441dba842c85ed229f178675854d1d63663444e106386056106ba7e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
