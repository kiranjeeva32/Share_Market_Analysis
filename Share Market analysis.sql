SELECT  Symbol,Name,market_cap,last_sale FROM market_cap mc
WHERE Symbol IN (SELECT Symbol FROM metrics WHERE sector = 'Information Technology') ORDER BY last_sale DESC LIMIT 1;

SELECT sector, COUNT(*) AS number_of_companies FROM market_cap mc JOIN metrics m USING (symbol) GROUP BY sector 
ORDER BY number_of_companies DESC ;

SELECT symbol, market_cap FROM market_cap ORDER BY market_cap DESC LIMIT 5;

SELECT sector,subsector, COUNT(*) AS number_of_companies FROM market_cap mc JOIN metrics m USING (symbol) 
GROUP BY sector,subsector
ORDER BY number_of_companies DESC ;
