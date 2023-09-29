# == Schema Information
#
# Table name: users
#
#  id    :bigint           not null, primary key
#  email :string(255)      default(""), not null
#  name  :string(255)
#
class User < ApplicationRecord
end
