class Article < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
    has_many :comments
    has_many :taggings
    has_many :tags, through: :taggings
    
    has_one_attached :image             #, styles: { medium: "300x300>", thumb: "100x100>" }
    # validates_acceptance_of :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

    def tag_list
      self.tags.collect do |tag|
        tag.name
      end.join(", ")
    end


    def tag_list=(tags_string)
      tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
      new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
      self.tags = new_or_found_tags
    end

    # def tag_list
    #   self.tags.collect do |tag|
    #     tag.name
    #   end.join(", ")
    # end

    
    # def tag_list=(tags_string)
    #   tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    #   new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    #   self.tags = new_or_found_tags
    # end
end