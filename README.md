# Instruções para Executar Scripts PowerShell

## alterar_encode.ps1

Utilizado para alteração de encoding de arquivos.

### Passos:
1. Execute o PowerShell como administrador.
2. Navegue até a pasta do sistema onde deseja executar o script.
3. Execute o seguinte comando:
   
   ```powershell
   ./alterar_encode.ps1 'caminho_para_a_pasta' '.extensao_dos_arquivos'


#### Exemplo: 
- ./alterar_encode.ps1 'c:/caminho/da/pasta' '.asp'
- ./alterar_encode.ps1 'c:/caminho/da/pasta' '.html'

## remover_pastas_bin_obj.ps1

Utilizado para remover as pastas de um diretório. Neste exemplo, está removendo as pastas /bin e /obj.

### Passos:

1. Execute o PowerShell como administrador.
2. Navegue até a pasta do sistema onde deseja executar o script.
3. Execute o seguinte comando:

   ```powershell
   ./remover_pastas_bin_obj.ps1 'caminho_para_a_pasta'

#### Exemplo: 
./remover_pastas_bin_obj.ps1 'c:/caminho/da/pasta'
