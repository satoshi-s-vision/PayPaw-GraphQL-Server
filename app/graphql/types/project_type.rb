module Types
  class ProjectType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    def title
      @object.user.email + '-' + @object.title
    end

    field :user, UserType, null: false

  end
end
