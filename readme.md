
## ECS
O conceito de Services no ECS é importante para a manutenção e escalabilidade de aplicações. Os serviços garantem a execução de um número específico de instâncias de uma tarefa, balanceamento de carga, atualizações de serviço suaves e a descoberta de serviço. Este capítulo aborda como configurar um serviço no ECS, incluindo a definição da tarefa, configuração do load balancer e políticas de autoscaling.

Os Services no ECS é responsável por manter um número específico de instâncias de uma tarefa (definida em uma Task Definition) em execução. Ele assegura que o número de instâncias desejado esteja sempre ativo e disponível. Se uma tarefa falha ou é interrompida por qualquer motivo, o serviço ECS automaticamente lança uma nova instância da tarefa para substituir a que falhou, garantindo assim a disponibilidade constante da aplicação.


Este projeto tem como pré-requisito a execução do projeto [AWSNetworkDesign](https://github.com/lucasbelem/AWSNetworkDesign). A seguir estão as instruções para garantir que todas as dependências e configurações necessárias sejam atendidas antes de executar este projeto.

1. **Conta na AWS**: Você deve ter uma conta na AWS.
2. **Permissões Administrativas**: Você deve ter um usuário/Principal com permissões administrativas.
3. **AWSNetworkDesign Stack**: Certifique-se de que a stack de rede do projeto [AWSNetworkDesign](https://github.com/lucasbelem/AWSNetworkDesign) esteja previamente deployada.
4. **Parameter Store**: A stack de rede deve exportar os valores referenciais necessários para o Parameter Store da AWS.

## Instruções para Deploy da Stack de Rede

1. Clone o repositório [AWSNetworkDesign](https://github.com/lucasbelem/AWSNetworkDesign).

    ```bash
    git clone https://github.com/lucasbelem/AWSNetworkDesign
    ```

2. Navegue para o diretório do projeto.

    ```bash
    cd AWSNetworkDesign
    ```
   
    ```bash
    terraform init -backend-config=env/dev/backend.tfvars
    ```
   
    ```bash
    terraform apply --auto-approve -var-file=env/dev/terraform.tfvars
    ```
