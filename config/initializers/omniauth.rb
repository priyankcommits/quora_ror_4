OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1012887002120877', '8f416ac0ce09cdc75876b4e58e83c2dc'
end
