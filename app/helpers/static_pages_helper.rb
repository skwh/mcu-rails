module StaticPagesHelper
	def mod_pack_getter #retrieves the content of the modpack for no-text-updates listing
		yml_contents = open("http://173.224.120.11/repo/server.yml") { |f| f.read }
		modpack_obj = YAML.load(yml_contents)
		modpack = modpack_obj[:required_mods] + modpack_obj[:allowed_mods]
		return modpack
	end
end
