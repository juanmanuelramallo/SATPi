require "administrate/base_dashboard"

class SensorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    packages: Field::HasMany,
    id: Field::Number,
    type_name: EnumField,
    node: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    data_type: Field::String.with_options(searchable: false),
    description: Field::Text.with_options(searchable: false)
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :type_name,
    :data_type,
    :packages,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :type_name,
    :data_type,
    :description,
    :packages,
    :node,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :node,
    :type_name,
    :data_type,
    :description,
  ].freeze

  # Overwrite this method to customize how sensors are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(sensor)
    "Sensor ##{sensor.id} - #{ sensor.type_name }"
  end
end
