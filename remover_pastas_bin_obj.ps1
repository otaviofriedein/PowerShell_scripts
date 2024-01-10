# 1. Executar com Power Shell como administrador
# 2. Executar dentro da pasta do sistema, ou no diretório dos sistemas.
# Comando: ./remover_pastas_bin_obj.ps1 {path}
# Ex: ./remover_pastas_bin_obj.ps1 'c:/caminho/pasta' 

$my_path=$args[0]

$my_path = $my_path + '*'


foreach ($folder in Get-ChildItem -Path $my_path -Include ('bin','obj') -Recurse -Force) {	
	$original_pathname = $folder.FullName
	write-host 'Removendo' $original_pathname
 	Remove-Item -Path $original_pathname -Recurse -Force	
}