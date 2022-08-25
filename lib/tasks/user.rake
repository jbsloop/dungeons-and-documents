#
# Create default user for sign in
#

namespace :user do
  task dev_user: [:environment] do
    User.create(email: 'dev@email.com', password: 'admin123')
  end
end
