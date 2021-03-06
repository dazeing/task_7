class Stack < ApplicationRecord
    mount_uploaders :images, ImageUploader
    serialize :images, JSON
    paginates_per 2

    validates :images,  presence: true, length: { is: 10 }
    validates :tilte, presence: true, length: { minimum: 2 }
    
    #Cant use sessions from callbacks methods
end
