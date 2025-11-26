
USE projeto_inadimplencia;


CREATE OR REPLACE VIEW clientes_para_ml AS
SELECT
   
    renda_mensal,
    valor_emprestimo,
    prazo_meses,
    atrasos_pagamento_hist,
    
    
    motivo_emprestimo,
    estado_civil,
    estado,
    
  
    TIMESTAMPDIFF(YEAR, data_nascimento, data_solicitacao) AS idade,
    

    CASE WHEN possui_imovel = 'SIM' THEN 1 ELSE 0 END AS flag_possui_imovel,
    CASE WHEN possui_veiculo = 'SIM' THEN 1 ELSE 0 END AS flag_possui_veiculo,
    
    
    CASE WHEN inadimplente = 'SIM' THEN 1 ELSE 0 END AS alvo_inadimplente
    
FROM
    credito_clientes;
    
SELECT * FROM clientes_para_ml;
