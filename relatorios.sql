-- Relatório 1: Empregados Admitidos entre 2019-01-01 e 2022-03-31
SELECT 
    e.nome AS nomeEmpregado,
    e.cpf AS cpfEmpregado,
    e.dataAdm AS dataAdmissao,
    e.salario AS salario,
    d.nome AS nomeDepartamento,
    t.numero AS telefone
FROM 
    Empregado e
INNER JOIN 
    Departamento d ON e.Departamento_idDepartamento = d.idDepartamento
LEFT JOIN 
    telefone t ON t.Empregado_cpf = e.cpf
WHERE 
    e.dataAdm BETWEEN '2019-01-01' AND '2022-03-31'
ORDER BY 
    e.dataAdm DESC;

-- Relatório 2: Empregados que ganham menos que a média salarial
SELECT 
    e.nome AS nomeEmpregado,
    e.cpf AS cpfEmpregado,
    e.dataAdm AS dataAdmissao,
    e.salario AS salario,
    d.nome AS nomeDepartamento,
    e.email AS numeroTelefone
FROM 
    Empregado e
INNER JOIN 
    Departamento d ON e.Departamento_idDepartamento = d.idDepartamento
WHERE 
    e.salario < (SELECT AVG(salario) FROM Empregado)
ORDER BY 
    e.nome;

-- Relatório 3: Departamentos com a quantidade de empregados e médias salariais e de comissão
SELECT 
    d.nome AS nomeDepartamento,
    COUNT(e.cpf) AS quantidadeEmpregados,
    AVG(e.salario) AS mediaSalarial,
    AVG(e.comissao) AS mediaComissao
FROM 
    Departamento d
LEFT JOIN 
    Empregado e ON e.Departamento_idDepartamento = d.idDepartamento
GROUP BY 
    d.nome
ORDER BY 
    d.nome;

-- Relatório 4: Empregados com a quantidade de vendas e valores totais
SELECT 
    e.nome AS nomeEmpregado,
    e.cpf AS cpfEmpregado,
    e.sexo AS sexo,
    e.salario AS salario,
    COUNT(v.idVenda) AS quantidadeVendas,
    SUM(v.valor) AS valorTotal,
    SUM(v.comissao) AS comissaoTotal
FROM 
    Empregado e
LEFT JOIN 
    Venda v ON e.cpf = v.Empregado_cpf
GROUP BY 
    e.cpf
ORDER BY 
    quantidadeVendas DESC;

-- Relatório 5: Empregados com vendas associadas a serviços
SELECT 
    e.nome AS nomeEmpregado,
    e.cpf AS cpfEmpregado,
    e.sexo AS sexo,
    e.salario AS salario,
    COUNT(isv.Venda_idVenda) AS qntdVendasServico,
    SUM(isv.valor) AS qntdVendasServicoValor,
    SUM(isv.desconto) AS qntdVendasServicoDesconto
FROM 
    Empregado e
LEFT JOIN 
    itensServico isv ON e.cpf = isv.Empregado_cpf
GROUP BY 
    e.cpf
ORDER BY 
    qntdVendasServico DESC;

-- Relatório 6: Serviços realizados por um Pet
SELECT 
    p.nome AS nomePet,
    isv.valor AS valorServico,
    isv.desconto AS desconto,
    s.nome AS nomeServico,
    isv.quantidade AS quantidade,
    e.nome AS empregadoResponsavel
FROM 
    PET p
INNER JOIN 
    itensServico isv ON p.idPET = isv.PET_idPET
INNER JOIN 
    Servico s ON isv.Servico_idServico = s.idServico
INNER JOIN 
    Empregado e ON isv.Empregado_cpf = e.cpf
ORDER BY 
    isv.valor DESC;

-- Relatório 7: Vendas realizadas para um Cliente específico
SELECT 
    v.data AS dataVenda,
    v.valor AS valor,
    v.desconto AS desconto,
    (v.valor - v.desconto) AS valorTotal,
    e.nome AS empregadoResponsavel
FROM 
    Venda v
INNER JOIN 
    Empregado e ON v.Empregado_cpf = e.cpf
WHERE 
    v.Cliente_cpf = '017.503.885-61'
ORDER BY 
    v.data DESC;

-- Relatório 8: 10 serviços mais vendidos
SELECT 
    s.nome AS nomeServico,
    COUNT(isv.Servico_idServico) AS qntdVendas,
    SUM(isv.valor) AS valorTotal
FROM 
    Servico s
INNER JOIN 
    itensServico isv ON s.idServico = isv.Servico_idServico
GROUP BY 
    s.nome
ORDER BY 
    qntdVendas DESC
LIMIT 10;

-- Relatório 9: Formas de pagamento mais utilizadas nas vendas
SELECT 
    fp.tipo AS formaPagamento,
    COUNT(fp.idFormaPgVenda) AS qntdVendas,
    SUM(v.valor) AS valorTotal
FROM 
    FormaPgVenda fp
INNER JOIN 
    Venda v ON fp.idFormaPgVenda = v.idVenda 
GROUP BY 
    fp.tipo
ORDER BY 
    qntdVendas DESC;

-- Relatório 10: Balanço das vendas por dia
SELECT 
    v.data AS dataVenda,
    COUNT(v.idVenda) AS qntdVendas,
    SUM(v.valor) AS valorTotal
FROM 
    Venda v
GROUP BY 
    v.data
ORDER BY 
    v.data DESC;

-- Relatório 11: Produtos e seus fornecedores
SELECT 
    p.nome AS nomeProduto,
    p.valorVenda AS valorProduto,
    ic.quantidade AS qntdProduto,
    f.nome AS nomeFornecedor,
    f.email AS emailFornecedor
FROM
    Produtos p
INNER JOIN 
    ItensCompra ic ON p.idProduto = ic.Produtos_idProduto
INNER JOIN 
    Compras c ON ic.Compras_idCompra = c.idCompra
INNER JOIN 
    Fornecedor f ON c.Fornecedor_cpf_cnpj = f.cpf_cnpj
ORDER BY 
    p.nome;

-- Relatório 12: Produtos mais vendidos
SELECT 
    p.nome AS nomeProduto,
    COUNT(ic.Produtos_idProduto) AS qntdVendas,
    SUM(ic.valorCompra) AS valorTotal
FROM 
    Produtos p
INNER JOIN 
    ItensCompra ic ON p.idProduto = ic.Produtos_idProduto
GROUP BY 
    p.nome
ORDER BY 
    qntdVendas DESC;
