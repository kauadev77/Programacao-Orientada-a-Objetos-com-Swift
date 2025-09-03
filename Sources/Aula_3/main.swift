import Foundation

print("Aula 3 de Swift!!")
class Carro {
    private(set) var marca: String
    private(set) var modelo: String
    public init(marca: String, modelo: String){
        self.marca = marca
        self.modelo = modelo
    }
    func acelerar(){
        print("O carro \(marca) \(modelo) está acelerando a 80km")
    }
    func frear(){
        print("O carro \(marca): ]\(modelo) está freando")
    }
    private func setMarca(marca: String){
        self.marca = marca
    }
    public func mudarMarca(novaMarca: String, senha: Int){
        if senha == 123{
            self.setMarca(marca: novaMarca)
        }
        else{
            print("Senha incorreta acesso negado")
        }
    }
}




//Ex 1
print("Exercício 1 da lista")
class Cofre {
    private (set) var saldo: Double
    private var depositoInicial: Double

    init(depositoInicial: Double){
        self.depositoInicial = depositoInicial
        if depositoInicial < 0 {
            self.saldo = 0
            print("Saldo: 0, pois depositi inicial foi igual a zero.")
        }
        else {
            self.saldo = depositoInicial
        }
    }
    public func depositar(quantia: Double){
        if quantia < 0.1 {
            print("Depósito inválido")
            return
        }
        saldo += quantia
    }
    public func sacar(quantia: Double){
        if quantia < 0 {
            print("Saque inválido")
            return
        }
        if quantia > saldo {
            print("Saque inválido")
            return
        }
        saldo -= quantia
    }
    public func getSaldo() -> Double {
        return saldo
    }
}


print("Criando um cofre válido:")
let meuCofre = Cofre(depositoInicial: 100.0)
print("Saldo inicial: \(meuCofre.getSaldo())") // Esperado: 100.0
print("\nTentando criar um cofre inválido:")
let cofreInvalido = Cofre(depositoInicial: -50.0) // Esperado: Mensagem de aviso
print("Saldo do cofre inválido: \(cofreInvalido.getSaldo())") // Esperado: 0.0
print("\n--- Transações ---")
meuCofre.depositar(quantia: 50.0) // Válido
print("Saldo após depósito: \(meuCofre.getSaldo())") // Esperado: 150.0
meuCofre.depositar(quantia: -20.0) // Inválido
print("Saldo após depósito falho: \(meuCofre.getSaldo())") // Esperado: 150.0
meuCofre.sacar(quantia: 30.0) // Válido
print("Saldo após saque: \(meuCofre.getSaldo())") // Esperado: 120.0
meuCofre.sacar(quantia: 200.0) // Inválido (saldo insuficiente)
print("Saldo após saque falho: \(meuCofre.getSaldo())") // Esperado: 120.0 meuCofre.saldo = 5000.0 
// Esta linha deve causar um ERRO, demonstrando que 'saldo' está seguro



print("Ex 3")
/*class PerfilUsuario {
    public let id: UUID
    public let dataDeCadastro: Date
    public var nomeDeExibicao: String
    private var hashDaSenha: String

    init
}