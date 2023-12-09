import { pool } from '../config.js'

     //get holder by id
     export const getHoldingById = async (req, res) => {
        const id = req.params.id;
        const sql = "SELECT COUNT(holding) AS holding_count, SUM(hold_value) AS total_hold_value, holder FROM keys WHERE holder = $1 GROUP BY holder;";
    
        try {
            const { rows } = await pool.query(sql, [id]);
    
            if (rows.length > 0) {
                res.json(rows[0]);
            } else {
                res.status(404).json({ error: "Holding not found" });
            }
    
        } catch (err) {
            console.error("Error executing query:", err);
            res.status(500).json({ error: "Internal Server Error", details: err.message });
        }
    };

    export const getHolderById = async (req, res) => {
        const id = req.params.id;
        const sql = "SELECT COUNT(holder) AS holder_count, holding FROM keys WHERE holding = $1 GROUP BY holding;";
    
        try {
            const { rows } = await pool.query(sql, [id]);
    
            if (rows.length > 0) {
                res.json(rows[0]);
            } else {
                res.status(404).json({ error: "Holder not found" });
            }
    
        } catch (err) {
            console.error("Error executing query:", err);
            res.status(500).json({ error: "Internal Server Error", details: err.message });
        }
    };

    export const getNetWorthy = async (req, res) => {
        const id = req.params.id;
        const sql = "SELECT * FROM keys INNER JOIN users ON users.id = keys.holder WHERE holding = $1 ORDER BY keys.hold_value DESC LIMIT 4;";
    
        try {
            const data = await pool.query(sql, [id]);
            res.json(data.rows);
    
        } catch (err) {
            console.error("Error executing query:", err);
            res.status(500).json({ error: "Internal Server Error", details: err.message });
        }
    };
    
