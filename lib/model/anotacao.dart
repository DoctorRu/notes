
class Anotacao{

  int id;
  String titulo;
  String descricao;
  String data;

  Anotacao(this.titulo, this.descricao, this.data);

  Map toMap(){

    Map<String, dynamic> map = {
      "titulo" : this.titulo,
      "descricao" : this.descricao,
      "data" : this.data,
    };

    // só retorna id para casos que não o de create pois o id é automático
    // ja para update retorna um id existente
    if( this.id != null ){
      map["id"] = this.id;
    }

    return map;

  }

}