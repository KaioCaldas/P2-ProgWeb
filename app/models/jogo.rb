class Jogo < ActiveRecord::Base
	mount_uploader :foto , FotoJogoUploader
end
