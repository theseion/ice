private
sortDefinitions 
	"merge on place (do not copy or reasign)"
	definitions sort: [ :a :b | a loadOrder < b loadOrder ]