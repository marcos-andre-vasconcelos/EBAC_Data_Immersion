CREATE view vw_Potencial

as

select	a.codcliente, a.Ano, a.Area_Comercial, a.Area_Hibrida, a.Area_Residencial, a.Area_Industrial, ValorPotencial, 
		sum(valor) as ValorVendas
from	tbPotencial_final a
left	join tbVendas_Final b
on		a.codcliente = b.codcliente
and		a.ano		= b.ano
group	by a.codcliente, a.Ano, a.Area_Comercial, a.Area_Hibrida, a.Area_Residencial, a.Area_Industrial, ValorPotencial
GO