Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, Sharespace::APP_ID, Sharespace::SECRET_CODE
end
