class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :password, :created_at
end
