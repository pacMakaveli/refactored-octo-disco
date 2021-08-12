# frozen_string_literal: true

class CollectionReflex < ApplicationReflex
  def toggle_list
    list = GlobalID::Locator.locate_signed(element.dataset[:list])

    listable = Listable.where(list_id: list.id, collection_id: collection.id).first_or_initialize

    if listable.new_record?
      listable.destroy
    else
      listable.save
    end
  end

private

  def collection
    GlobalID::Locator.locate_signed(element.dataset[:collection])
  end
end
