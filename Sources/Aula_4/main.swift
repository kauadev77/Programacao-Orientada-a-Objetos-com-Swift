/*class pessoa {
    var nome: String

    init(nome: String) {
        self.nome = nome
    }
}

class aluno: pessoa {
    var matricula: String

    init(nome: String, matricula: String) {
        self.matricula = matricula
        super.init(nome: nome)
    }

    public func chamar(){
        print("Nome: \(nome), Matrícula: \(matricula)")
    }
}

let aluno1 = aluno(nome: "João", matricula: "12345")
aluno1.chamar()

class Carro {
    private var modelo: String
    private var marca: String
    private var senha: Int

    init(modelo: String, marca: String, senha: Int) {
        self.modelo = modelo
        self.marca = marca
        self.senha = senha
    }

    func acelerar() {
        print("O carro \(modelo) da marca \(marca) está acelerando.")
    }

    func frear() {
        print("O carro \(modelo) da marca \(marca) está freando.")
    }

    func getMarca() -> String {
        return marca
    }

    private func setMarca(marca: String) {
        self.marca = marca
    }

    public func alterarMarca(senha: Int, novaMarca: String) {
        if self.senha == senha {
            marca = novaMarca
            print("Marca alterada para \(novaMarca).")
        } else {
            print("Senha incorreta. Não foi possível alterar a marca.")
        }
    }

    public func getModelo() -> String {
        return modelo
    }
}

let meuCarro = Carro(modelo: "Focus", marca: "Ford", senha: 123)
meuCarro.acelerar()
meuCarro.frear()
print("Marca atual: \(meuCarro.getMarca())")
meuCarro.alterarMarca(senha: 123, novaMarca: "Chevrolet")
print("Marca atualizada: \(meuCarro.getMarca())")


let carro = CarroEsportivo(modelo: "Mustang", marca: "Ford", senha: 456, velocidadeMaxima: 380)
print(carro.getModelo)
carro.acelerar()
carro.acelerandoMaximo()
carro.acelerar(velocidade: 200)
*/


print("Ex1")
class Veiculo {
    var marca: String
    var ano: Int

    init(marca: String, ano: Int){
        self.marca = marca
        self.ano = ano
    }
}

class Carro: Veiculo{
    var numeroDePortas: Int

    init(marca: String, ano: Int, numeroDePortas: Int){
        self.numeroDePortas = numeroDePortas
        super.init(marca:marca, ano:ano)
    }

    public func apresentar(){
        print("Marca: \(marca), Ano: \(ano), Num de portas: \(numeroDePortas)")
    }
}

let meuCarro = Carro(marca: "Toyota", ano: 2014, numeroDePortas: 0)
meuCarro.numeroDePortas = 4
meuCarro.apresentar()
