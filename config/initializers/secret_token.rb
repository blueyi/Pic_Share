# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# PicShare::Application.config.secret_key_base = 'e4710ef3aae88d08738e75d93a0da8f36722dcd7d4047f51782b5b1a21775b5d8e017af2738c23f2429df28eaf6e550ea45dd78d9a200ac2f2e79dbbd7eb7ee9'

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

PicShare::Application.config.secret_key_base = secure_token
