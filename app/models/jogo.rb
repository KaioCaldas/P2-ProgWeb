class Jogo < ActiveRecord::Base
	mount_uploader :foto , FotoJogoUploader
	has_many :vendas
end
