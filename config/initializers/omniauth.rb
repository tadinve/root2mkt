Rails.application.config.middleware.use OmniAuth::Builder do
	#provider :twitter, 'fbSO1TZHzA5Iwy4ypITd4Q', '3WVk2Qoca2sRbdTIvlJ5VjLo8ClMX9YtpXjPEKFK7bA'
 	provider :twitter, "iYiVR2zIl9Q6z3nvVispQ", "91TQIU6kt6baEm8PDFX9TiGJPZfF5q82gKvaHuX2OZE"
  provider :linkedin, "za8xh1zy4k4d", "6u1Tsmt8bjMbCXw4"
  #provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
           :scope => 'email,offline_access,read_stream,user_about_me,user_birthday,
           user_education_history,user_hometown,user_location,user_photos,user_relationships,
           user_relationship_details,user_work_history,user_website', :display => 'popup'
end
