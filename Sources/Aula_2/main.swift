import Foundation
//1:
struct livro{
let titulo: String
let autor: String
let anoDePublicacao: Int

func exibirDetalhes(){
print(titulo, autor, anoDePublicacao)

}
}

let livro1 = livro(titulo: "Swift", autor: "Eu", anoDePublicacao: 2014)
let livro2 = livro(titulo: "Ios", autor: "Steve Jobs?", anoDePublicacao: 2007)

livro1.exibirDetalhes()
livro2.exibirDetalhes()

/*2:*/
print("")
enum EstacaoDoAno {
    case primavera
    case verao
    case outono
    case inverno
}

class Calendario {
    static func getMensagem(para estacao: EstacaoDoAno) -> String {
        switch estacao {
        case .primavera:
            return "Flor!"
        case .verao:
            return "Sol."
        case .outono:
            return "Folhas secas."
        case .inverno:
            return "Frio!"
        }
    }
}

print(Calendario.getMensagem(para: .primavera))
print(Calendario.getMensagem(para: .verao))
print(Calendario.getMensagem(para: .outono))
print(Calendario.getMensagem(para: .inverno))

/*3:*/
print("")

enum StatusPedido {
    case recebido
    case processando
    case enviado
    case entregue
}

class Pedido {
    var id: Int
    var descricao: String
    var status: StatusPedido
    
    init(id: Int, descricao: String, status: StatusPedido) {
        self.id = id
        self.descricao = descricao
        self.status = status
    }
    
    func atualizarStatus(novoStatus: StatusPedido) {
        self.status = novoStatus
        print("Status do pedido \(self.id) atualizado para: \(self.status)")
    }
}

let meuPedido: Pedido  = Pedido(id: 101, descricao: "Calça", status: .recebido)

meuPedido.atualizarStatus(novoStatus: .enviado)