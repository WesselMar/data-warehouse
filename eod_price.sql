USE `DW`;
CREATE  OR REPLACE VIEW `eod_price` AS
(SELECT main.tradeday, main.ticker, open, high, low, close, adj, volume, dividend, split
  FROM DW.eod_price_archive AS main
 INNER JOIN 
	(SELECT tradeday, ticker, MAX(modified) AS modified
	   FROM DW.eod_price_archive
	  GROUP BY tradeday, ticker) AS aux
	ON main.tradeday = aux.tradeday AND main.ticker = aux.ticker AND main.modified = aux.modified
 ORDER BY tradeday, ticker);