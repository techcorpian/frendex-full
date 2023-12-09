import { pool } from '../config.js'

  //get total buys
  export const TotalBuys = async (req,res) => {
    const sql="SELECT COUNT(buy) FROM trades";
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].count);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 //get percentage of total buys
 export const PercentageOfBuys = async (req,res) => {
    const sql=`WITH buy_changes AS (
        SELECT
            COUNT(*) AS total_rows,
            COUNT(CASE WHEN buy > lag_buy THEN 1 END) AS increased_count,
            COUNT(CASE WHEN buy < lag_buy THEN 1 END) AS decreased_count
        FROM (
            SELECT
                buy,
                LAG(buy) OVER (ORDER BY created_on) AS lag_buy
            FROM
                trades
            WHERE
                created_on >= CURRENT_TIMESTAMP - INTERVAL '24 hours'
        ) AS recent_trades
    )
    SELECT
        CASE
            WHEN increased_count > decreased_count THEN
                (increased_count * 100.0 / total_rows)
            WHEN decreased_count > increased_count THEN
                -(decreased_count * 100.0 / total_rows)
            ELSE
                0.0  -- No change
        END AS average_percentage
    FROM
        buy_changes;
    
    
    `;
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].average_percentage);

    }catch (err){
        console.log(err.message);
    }
    
    
};

   //get total sells
   export const TotalSells = async (req,res) => {
    const sql="SELECT COUNT(sell) FROM trades";
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].count);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

  //get percentage of total buys
  export const PercentageOfSells = async (req,res) => {
    const sql=`WITH sell_changes AS (
        SELECT
            COUNT(*) AS total_rows,
            COUNT(CASE WHEN sell > lag_sell THEN 1 END) AS increased_count,
            COUNT(CASE WHEN sell < lag_sell THEN 1 END) AS decreased_count
        FROM (
            SELECT
                sell,
                LAG(sell) OVER (ORDER BY created_on) AS lag_sell
            FROM
                trades
            WHERE
                created_on >= CURRENT_TIMESTAMP - INTERVAL '24 hours'
        ) AS recent_trades
    )
    SELECT
        CASE
            WHEN increased_count > decreased_count THEN
                (increased_count * 100.0 / total_rows)
            WHEN decreased_count > increased_count THEN
                -(decreased_count * 100.0 / total_rows)
            ELSE
                0.0  -- No change
        END AS average_percentage
    FROM
        sell_changes;
    
    
    
    
    `;
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].average_percentage);

    }catch (err){
        console.log(err.message);
    }
    
    
};

    //get buy volume
    export const BuyVolume = async (req,res) => {
        const sql="SELECT CAST(SUM(buy) AS DECIMAL(10, 2)) FROM trades";
        try{
            const data = await pool.query(sql);
            res.json(data.rows[0].sum);

        }catch (err){
            console.log(err.message);
        }
    
        
    };

    export const PercentageOfBuyVolume = async (req,res) => {
        const sql=`WITH buyvolume_changes AS (
            SELECT
                COUNT(buy) AS total_rows,
                SUM(CASE WHEN buy > lag_buyvolume THEN 1 END) AS increased_count,
                SUM(CASE WHEN buy < lag_buyvolume THEN 1 END) AS decreased_count
            FROM (
                SELECT
                    buy,
                    LAG(buy) OVER (ORDER BY created_on) AS lag_buyvolume
                FROM
                    trades
                WHERE
                    created_on >= CURRENT_TIMESTAMP - INTERVAL '24 hours'
            ) AS recent_trades
        )
        SELECT
            CASE
                WHEN increased_count > decreased_count THEN
                    (increased_count * 100.0 / total_rows)
                WHEN decreased_count > increased_count THEN
                    -(decreased_count * 100.0 / total_rows)
                ELSE
                    0.0  -- No change
            END AS average_percentage
        FROM
            buyvolume_changes;
        
        
        
        
        `;
        try{
            const data = await pool.query(sql);
            res.json(data.rows[0].average_percentage);
    
        }catch (err){
            console.log(err.message);
        }
        
        
    };

    //get sell volume
    export const SellVolume = async (req,res) => {
    const sql="SELECT CAST(SUM(sell) AS DECIMAL(10, 2)) FROM trades";
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].sum);

    }catch (err){
        console.log(err.message);
    }
        
        
    };

    export const PercentageOfSellVolume = async (req,res) => {
        const sql=`WITH sellvolume_changes AS (
            SELECT
                COUNT(sell) AS total_rows,
                SUM(CASE WHEN sell > lag_sellvolume THEN 1 END) AS increased_count,
                SUM(CASE WHEN sell < lag_sellvolume THEN 1 END) AS decreased_count
            FROM (
                SELECT
                    sell,
                    LAG(sell) OVER (ORDER BY created_on) AS lag_sellvolume
                FROM
                    trades
                WHERE
                    created_on >= CURRENT_TIMESTAMP - INTERVAL '24 hours'
            ) AS recent_trades
        )
        SELECT
            CASE
                WHEN increased_count > decreased_count THEN
                    (increased_count * 100.0 / total_rows)
                WHEN decreased_count > increased_count THEN
                    -(decreased_count * 100.0 / total_rows)
                ELSE
                    0.0  -- No change
            END AS average_percentage
        FROM
            sellvolume_changes;
        
        
        
        
        `;
        try{
            const data = await pool.query(sql);
            res.json(data.rows[0].average_percentage);
    
        }catch (err){
            console.log(err.message);
        }
        
        
    };

    //get total volume
    export const TotalVolume = async (req,res) => {
    const sql="SELECT SUM(trade_value) FROM trades";
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].sum);

    }catch (err){
        console.log(err.message);
    }
    
    
    };