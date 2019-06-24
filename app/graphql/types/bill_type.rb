module Types
  class BillType < Types::BaseObject
    field :id, ID, null: false
    field :note, String, null: false
    def note
      @object.user.email + '-' + @object.note
    end

    field :user, UserType, null: false

  end
end
