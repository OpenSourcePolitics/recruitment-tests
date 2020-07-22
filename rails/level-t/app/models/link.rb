class Link < ActiveRecord::Base
    belongs_to :user

    validates :body, uniqueness: {
        message: "Ce lien existe déjà."
    }
end