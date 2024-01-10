# 1. Executar com Power Shell como administrador
# 2. Executar dentro da pasta do sistema.
# Comando: ./alterar_encode.ps1 {path} {extensao}
# Ex: ./alterar_encode.ps1 'c:/caminho/pasta' '.asp'

$my_path=$args[0]
$extensao=$args[1]

$my_path = $my_path + '*'
$extensao = '*' + $extensao

#write-host $extensao
#write-host $my_path

foreach ($file in Get-ChildItem -Path $my_path -Include $extensao -Recurse) {	
	$original_pathname = $file.FullName
	$to_rename_pathname = $file.FullName + '_2'
 	Get-Content -Path $original_pathname | Set-Content -Encoding utf8 $to_rename_pathname
 	Remove-Item -Path $original_pathname -Force
 	Rename-Item -Path $to_rename_pathname -NewName $original_pathname
}