class Dictionary < ApplicationRecord
  validates:word,presence: true
  validates:mean,presence: true
end
