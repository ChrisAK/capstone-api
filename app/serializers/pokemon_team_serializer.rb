class PokemonTeamSerializer < ActiveModel::Serializer
  attributes :id
  has_one :pokemon
  has_one :team
end
