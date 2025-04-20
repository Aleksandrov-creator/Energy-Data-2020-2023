SELECT * FROM world_energy2024.myenergydata;
/* Top 10 countries by Total energy production 2020-2023 */
SELECT country, SUM(`Total Production`) AS Total_production
FROM myenergydata
GROUP BY country
ORDER BY Total_production DESC
LIMIT 10;

/* Top 10 countries by Renuwable energy production 2020-2023 */
SELECT country, ROUND(SUM(`Renewable Energy Production`),2) AS Total_Renewable_production
FROM myenergydata
GROUP BY country
ORDER BY Total_Renewable_production DESC
LIMIT 10;

/* Top 10 countries by Non-Renewable energy production 2020-2023 */
SELECT country, ROUND(SUM(`Non-Renewable Energy Production`),2) AS Total_NonRenewable_production
FROM myenergydata
GROUP BY country
ORDER BY Total_NonRenewable_production DESC
LIMIT 10;

/*The leader in total energy production 2020-2023 */
SELECT country, SUM(`Total Production`) AS Total_production
FROM myenergydata
group by country
ORDER BY Total_production DESC
LIMIT 1;

/* The most self-sufficient country by energy production */
SELECT country, ROUND(SUM(`Total Production`) / SUM(`Total Consumption`), 2) AS Energy_Sufficiency
FROM myenergydata
group by country
ORDER BY Energy_Sufficiency DESC
LIMIT 1;
