class ServiceOrder {
  final String id;
  final String client;
  final String status;
  final String desc;

  //construtor padrao
  ServiceOrder({
    required this.id,
    required this.client,
    required this.status,
    required this.desc
  });

  //construir factory para mapear o map do dart para o objeto
  //sera utilizado mais a frente para fetch em API exzterna
  factory ServiceOrder.fromJson(Map<String, String>json) {
    return ServiceOrder(
      id: json['id']??'',
      client: json['client']??'',
      status: json['status']??'',
      desc: json['desc']??'',
    );
  }

  //sobrescrevendo o tostring para facilitar o print no console
  @override
  String toString() => 'ServiceOrder(id: $id, client: $client, status: $status,)';
}
