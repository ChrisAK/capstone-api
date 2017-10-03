class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :number, :name, :type1, :type2, :totalStats, :hp, :attack, :defense, :sp_attack, :sp_defense, :speed, :generation, :legendary, :image
end
