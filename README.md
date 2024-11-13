
--- By Danilo Farias @dansoaresfarias

# BDII-2-Exercicio-de-BDII-DQL-Join

## Instruções

Nesse exercício iremos usar o mini-mundo do **Petshop** já conhecido por todos. Em anexo, seguem os Modelos Entidade Relacionamento (**MER**) e o Modelo Relacional (**MR**) desse mini-mundo. Além dos scripts em `.sql` dos comandos **DDL** e **DML** para criar as tabelas e inserir os dados nas tabelas do **PetShop**.

### Objetivo:
Elabore os scripts SQL (**DQL - Usem Join**) para os 12 relatórios solicitados a seguir, utilizando seus conhecimentos em **SQL-DQL**:

---

### **Relatório 1**  
**Lista dos empregados admitidos entre 2019-01-01 e 2022-03-31**, trazendo as colunas:

- **Nome Empregado**
- **CPF Empregado**
- **Data Admissão**
- **Salário**
- **Departamento**
- **Número de Telefone**

**Ordenado** por data de admissão decrescente.

---

### **Relatório 2**  
**Lista dos empregados que ganham menos que a média salarial dos funcionários do Petshop**, trazendo as colunas:

- **Nome Empregado**
- **CPF Empregado**
- **Data Admissão**
- **Salário**
- **Departamento**
- **Número de Telefone**

**Ordenado** por nome do empregado.

---

### **Relatório 3**  
**Lista dos departamentos com a quantidade de empregados total por cada departamento**, trazendo também:

- **Média Salarial** dos funcionários do departamento
- **Média da Comissão** recebida pelos empregados do departamento

**Ordenado** por nome do departamento.

---

### **Relatório 4**  
**Lista dos empregados com a quantidade total de vendas realizadas por cada Empregado**, além de:

- **Soma do valor total das vendas** do empregado
- **Soma das comissões** recebidas pelo empregado

**Ordenado** por quantidade total de vendas realizadas.

---

### **Relatório 5**  
**Lista dos empregados que prestaram Serviço na venda**, computando:

- **Quantidade total de vendas realizadas com serviço** por cada Empregado
- **Soma do valor total apurado pelos serviços prestados** nas vendas por empregado
- **Soma das comissões** das vendas com serviço

**Ordenado** por quantidade total de vendas realizadas.

---

### **Relatório 6**  
**Lista dos serviços já realizados por um Pet**, trazendo as colunas:

- **Nome do Pet**
- **Data do Serviço**
- **Nome do Serviço**
- **Quantidade**
- **Valor**
- **Empregado que realizou o Serviço**

**Ordenado** por data do serviço, da mais recente à mais antiga.

---

### **Relatório 7**  
**Lista das vendas realizadas para um Cliente**, trazendo as colunas:

- **Data da Venda**
- **Valor**
- **Desconto**
- **Valor Final**
- **Empregado que realizou a venda**

**Ordenado** por data da venda, da mais recente à mais antiga.

---

### **Relatório 8**  
**Lista dos 10 serviços mais vendidos**, trazendo:

- **Quantidade de vendas** de cada serviço
- **Somatório total dos valores de serviço vendido**

**Ordenado** por quantidade total de vendas realizadas.

---

### **Relatório 9**  
**Lista das formas de pagamentos mais utilizadas nas Vendas**, informando:

- **Quantidade de Vendas** para cada forma de pagamento
- **Total Valor Vendido** por cada forma de pagamento

**Ordenado** por quantidade total de vendas realizadas.

---

### **Relatório 10**  
**Balanço das Vendas**, informando:

- **Soma dos valores vendidos por dia**

Trazendo as colunas:

- **Data Venda**
- **Quantidade de Vendas**
- **Valor Total Venda**

**Ordenado** por Data Venda, da mais recente à mais antiga.

---

### **Relatório 11**  
**Lista dos Produtos**, informando qual **Fornecedor** de cada produto, trazendo as colunas:

- **Nome Produto**
- **Valor Produto**
- **Categoria do Produto**
- **Nome Fornecedor**
- **Email Fornecedor**
- **Telefone Fornecedor**

**Ordenado** por **Nome Produto**.

---

### **Relatório 12**  
**Lista dos Produtos mais vendidos**, informando:

- **Quantidade total de vezes** que cada produto participou em vendas
- **Total de valor apurado com a venda do produto**

Trazendo as colunas:

- **Nome Produto**
- **Quantidade (Total) Vendas**
- **Valor Total Recebido pela Venda do Produto**

**Ordenado** por **quantidade de vezes que o produto participou em vendas**.

---
