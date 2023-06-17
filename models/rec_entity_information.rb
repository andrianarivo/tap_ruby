class RecEntityInformation
  attr_accessor :rec_entity_code, :rec_entity_type, :rec_entity_id 
  def initialize(rec_entity_code, rec_entity_type, rec_entity_id)
    @rec_entity_code = rec_entity_code
    @rec_entity_type = rec_entity_type
    @rec_entity_id = rec_entity_id
  end 
end