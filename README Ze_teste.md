Teste Ze Delivey.

Bom dia / Boa tarde e Boa noite !

Obrigado pela oportunidade .

A opcao que fiz foi por realizar a atividade da Topologia para a aplicacao Ze Delivey .

Conforme ja Sabem, estou em faze de aprendizado e neste momento é impossivel desenvolver algo de propria autoria .

Dessa forma, fiz uma busca / pesquisa na internet e cheguei ate esse projeto .

Ja tenho capacidade de ler um projeto , entender o que ele faz e entao realizar uma breve analise.

Neste caso , o projeto atende os requisitos apontados no Desafio .

O ambiente no caso esta sendo criado com Kubernet , utilizando um Internet Gateway onde recebe as requisicoes de cliente, encaminha a um servidor Kubernet( neste ponto utiliza uma VPC Publica).

A partir desse ponto é utilizada uma VPC Privada Shared onde estao os Nodes Kubernets distribuidos em Zonas, no exemplo:

eu-central-1a, eu-central-1b,eu-central-1c  ( Mult AZ)

Adicionei ao arquivo backend.tf , uma entrada para criar um Database RDS Aurora tambem distribuidos em Zonas , para deixar coerente , listei as mesmas zonas onde os nodes Kubernets estao  :

eu-central-1a, eu-central-1b,eu-central-1c  ( Mult AZ)

O exemplo conta com registro de DNS em DNS.tf

O arquivo readme.MD original ,contem todas instrucoes para ativar e testar o codigo em ambiente aws, incluindo os outputs.

Como disse acima, já tenho essa capacidade de analise e seria injusto mascarar um conteudo e dizer que é meu de alguma forma .Alem do que sabemos o quanto é comum reaproveitamento de codigo .

Novamente, agradeço a oportunidade !

Fonte de consulta : 

https://aymen-segni.com/index.php/2020/04/19/deploy-kubernetes-aws-k8s-cluster-with-terraform-and-kops/