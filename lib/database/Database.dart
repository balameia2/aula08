import '../model/ServiceOrder.dart';

class Database {
  //inicio do padrao singleton
  //cria uma instancia interna privada
  static final Database _instance = Database._internal();
  
  //construtor privado para que ninguem de fora usa "new database()"
  //criando outro objeto
  Database _internal();

  //sempre que alguem chamar database(), retorna a mesma instancia de memoria
  factory Database() = _instance;
  //fim do padrao singleton

  final List<ServiceOrder>serviceOrderMock = [
    ServiceOrder(
      id: 'OS-2026-001', 
      client: 'Lab de Informática', 
      status: 'Em Andamento', 
      desc: 'Manutenção preventiva dos computadores.',
    ),
    ServiceOrder(
      id: 'OS-2026-002', 
      client: 'Secretaria Executiva', 
      status: 'Aberta', 
      desc: 'Configuração de nova sub-rede local',
    ),
    ServiceOrder(
      id: 'OS-2026-003', 
      client: 'Bloco Técnico B', 
      status: 'Concluída', 
      desc: 'Troca de switch e testes de patch panel.',
    ),
  ];

  //o metodo getOrders encapsula os dados mockados e retorna a lista convertida
  List<ServiceOrder> getOrders() {
    return serviceOrderMock;
  }

  void addOrder(ServiceOrder order) {
    serviceOrderMock.add(order);
  }

}