# 🚀 FloodMan - Versão 0.2

> 📡 Ferramenta de varredura e reconhecimento de rede, inspirada no conceito de **Ping Flood Attack**.  
> 🧠 Desenvolvido como parte do desafio prático da **Aula 03** da mentoria **RedScan Academy**.

---

## 📚 Sobre o Projeto (PT-BR)

**FloodMan** é um script Bash criado para fins educacionais, com o objetivo de demonstrar técnicas básicas de varredura de portas e descoberta de hosts ativos em redes locais.

Foi desenvolvido como parte da **Aula 03** da mentoria **RedScan Academy**, sendo utilizado como um **desafio prático** para alunos da trilha de segurança ofensiva.

O nome "FloodMan" é uma alusão ao ataque **Ping Flood**, onde pacotes ICMP são usados para sobrecarregar um host-alvo — aqui, de forma **controlada e didática** para treinar raciocínio ofensivo.

---

## 🧰 Funcionalidades

- Varredura de portas com:
  - `hping3`
  - `netcat`
  - `/dev/tcp`
- Descoberta de hosts vivos (Ping Sweep)
- Menu interativo
- Totalmente feito em Bash, sem dependências complexas

---

## ⚙️ Pré-requisitos

Instale os pacotes necessários:

```bash
sudo apt update
sudo apt install hping3 tcpdump netcat-traditional
```

---

## 🚀 Modo de Uso

```bash
chmod +x floodman.sh
./floodman.sh -a
```

### Opções disponíveis:

| Flag | Descrição                  |
|------|----------------------------|
| -a   | Portscan com hping3        |
| -b   | Ping Sweep com hping3      |
| -c   | Portscan com netcat        |
| -d   | Ping Sweep com netcat      |
| -e   | Ping Sweep com /dev/tcp    |
| -f   | Portscan com /dev/tcp      |

---

## ⚠️ Aviso

Este código é **estritamente educacional** e não deve ser usado em redes sem autorização.  
**Não nos responsabilizamos por usos indevidos.**

---

# 🌐 FloodMan - Version 0.2 (ENGLISH)

> 📡 Network scanning tool inspired by the concept of **Ping Flood Attack**.  
> 🧠 Built as part of a practical challenge during **Class 03** of the **RedScan Academy** mentorship.

---

## 📚 About the Project

**FloodMan** is a Bash script created for educational purposes. It demonstrates basic port scanning and live host discovery techniques on local networks.

It was developed for **RedScan Academy**'s **Offensive Security mentorship**, and used during **Class 03** as a hands-on challenge.

The name "FloodMan" refers to the **Ping Flood** attack, where ICMP packets are used to overload a target — here, in a **controlled and safe way** for training purposes.

---

## 🧰 Features

- Port scanning with:
  - `hping3`
  - `netcat`
  - `/dev/tcp`
- Live host discovery (ping sweep)
- Interactive menu
- Written entirely in Bash

---

## ⚙️ Requirements

Install required packages:

```bash
sudo apt update
sudo apt install hping3 tcpdump netcat-traditional
```

---

## 🚀 Usage

```bash
chmod +x floodman.sh
./floodman.sh -a
```

### Available options:

| Flag | Description                 |
|------|-----------------------------|
| -a   | Portscan using hping3       |
| -b   | Ping Sweep using hping3     |
| -c   | Portscan using netcat       |
| -d   | Ping Sweep using netcat     |
| -e   | Ping Sweep using /dev/tcp   |
| -f   | Portscan using /dev/tcp     |

---

## ⚠️ Disclaimer

This code is intended **for educational use only**.  
**Do not scan or attack networks without explicit permission.**

---


