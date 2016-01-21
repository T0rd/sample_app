# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
   #Use the existing token
  File.read(token_file).chomp
  else
  #Generate a new token and store it in token_file
  token = SecureRandom.hex(64)
  File.write(token_file, token)
  token
 end
end
SampleApp::Application.config.secret_key_base = '84ada66571926bab12b9229185b1460512fe0d75803f61f27858a0d7988d4c1775c86350968017c240f460d8c8275f53e3b7b95e9574801d5548e5e7ec66b5d4'
