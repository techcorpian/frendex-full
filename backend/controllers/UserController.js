import { pool } from '../config.js'

//get all users
export const getUsers = async (req,res) => {
    const sql="SELECT * FROM users";
    try{
        const data = await pool.query(sql);
        res.json(data.rows);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 //get trending users
export const getTrendingUsers = async (req,res) => {
    const sql="SELECT COUNT(trades.buy) AS buys, COUNT(trades.sell) AS sells, users.* FROM users INNER JOIN trades ON trades.user_id = users.id GROUP BY users.id ORDER BY users.supply DESC LIMIT 20;";
    try{
        const data = await pool.query(sql);
        res.json(data.rows);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

  //get top spenders users
export const getTopSpendersUsers = async (req,res) => {
    const sql="SELECT COUNT(trades.buy) AS buys, COUNT(trades.sell) AS sells, users.* FROM users INNER JOIN trades ON trades.user_id = users.id GROUP BY users.id ORDER BY users.total_spent DESC LIMIT 20";
    try{
        const data = await pool.query(sql);
        res.json(data.rows);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 //get top seller users
 export const getTopSellersUsers = async (req,res) => {
    const sql="SELECT COUNT(trades.buy) AS buys, COUNT(trades.sell) AS sells, SUM(trades.sell) AS sumofsells, users.* FROM users INNER JOIN trades ON trades.user_id = users.id GROUP BY users.id ORDER BY COUNT(trades.sell) DESC LIMIT 20";
    try{
        const data = await pool.query(sql);
        res.json(data.rows);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 //get most purchased users
 export const getMostPurchasedUsers = async (req,res) => {
    const sql="SELECT COUNT(trades.buy) AS buys, COUNT(trades.sell) AS sells, users.* FROM users INNER JOIN trades ON trades.user_id = users.id GROUP BY users.id ORDER BY users.total_amount DESC LIMIT 20";
    try{
        const data = await pool.query(sql);
        res.json(data.rows);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 //get most fees users
 export const getMostFeesUsers = async (req,res) => {
    const sql="SELECT COUNT(trades.buy) AS buys, COUNT(trades.sell) AS sells, users.* FROM users INNER JOIN trades ON trades.user_id = users.id GROUP BY users.id ORDER BY users.total_fees_earned DESC LIMIT 20";
    try{
        const data = await pool.query(sql);
        res.json(data.rows);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 //get active users
 export const ActiveUsers = async (req,res) => {
    const sql="SELECT COUNT(user_status) FROM users WHERE user_status=1";
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].count);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 export const AvgPrice = async (req,res) => {
    const sql="SELECT CAST(AVG(key_price) AS DECIMAL(10,2)) FROM users";
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].avg);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 export const PercentageOfAvgPrice = async (req,res) => {

    const sql= `WITH avg_keyprice_changes AS (
        SELECT
            AVG(u.key_price) AS avg_keyprice,
            LAG(AVG(u.key_price)) OVER (ORDER BY u.created_on) AS lag_avg_keyprice
        FROM
            users u
        WHERE
            u.created_on >= CURRENT_TIMESTAMP - INTERVAL '24 hours'
        GROUP BY
            u.created_on
    )
    SELECT
        CASE
            WHEN avg_keyprice > lag_avg_keyprice THEN
                (avg_keyprice - lag_avg_keyprice) * 100.0 / lag_avg_keyprice
            WHEN avg_keyprice < lag_avg_keyprice THEN
                (lag_avg_keyprice - avg_keyprice) * 100.0 / lag_avg_keyprice
            ELSE
                0.0
        END AS percentage_change
    FROM
        avg_keyprice_changes;`;

        try {
            const data = await pool.query(sql);
    
            // Check if data.rows[0] exists before accessing percentage_change
            const percentageChange = data.rows[0] && data.rows[0].percentage_change !== undefined
                ? data.rows[0].percentage_change
                : '0.00';
    
            res.json(percentageChange);
        } catch (err) {
            console.error(err.message);
            res.status(500).json({ error: 'Internal Server Error' });
        }
};

 export const AvgVolume = async (req,res) => {
    const sql="SELECT (SUM(trades.buy) + SUM(trades.sell))/COUNT(users.id) AS avg_volume FROM trades INNER JOIN users ON users.id = trades.user_id;";
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].avg_volume);

    }catch (err){
        console.log(err.message);
    }
 
    
 };

 export const PercentageOfAvgVolume = async (req,res) => {
    const sql=`SELECT (SUM(trades.buy) + SUM(trades.sell))/COUNT(users.id) AS avg_volume FROM trades INNER JOIN users ON users.id = trades.user_id;

`;
    try{
        const data = await pool.query(sql);
        res.json(data.rows[0].avg_volume);

    }catch (err){
        console.log(err.message);
    }
 
    
 };


    //get percentage of Active users
    export const PercentageActiveUsers = async (req,res) => {
        var currentDate = new Date().toISOString().split('T')[0];
        const sql=`SELECT COUNT(*) FROM users WHERE user_status=1 AND created_on BETWEEN '${currentDate} 00:00:00' AND '${currentDate} 23:59:00'`;
        try{
            const data = await pool.query(sql);
            res.json(data.rows[0].count);
    
        }catch (err){
            console.log(err.message);
        }
        
        
    };

    //get percentage of InActive users
    export const PercentageInActiveUsers = async (req,res) => {
        var currentDate = new Date().toISOString().split('T')[0];
        const sql=`SELECT COUNT(*) FROM users WHERE user_status=0 AND updated_on BETWEEN '${currentDate} 00:00:00' AND '${currentDate} 23:59:00'`;
        try{
            const data = await pool.query(sql);
            res.json(data.rows[0].count);
    
        }catch (err){
            console.log(err.message);
        }
        
        
    };

    //getfriendsbyid
    export const getFriendsById = async (req, res) => {
        const id = req.params.id;
        const sql = "SELECT * FROM users WHERE id = $1";
    
        try {
            const data = await pool.query(sql, [id]);
            res.json(data.rows[0]);
    
        } catch (err) {
            console.error("Error executing query:", err);
            res.status(500).json({ error: "Internal Server Error", details: err.message });
        }
    };




    
    
    



 