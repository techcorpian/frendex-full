import pg from "pg";
const { Pool } = pg;
import * as dotenv from "dotenv";
dotenv.config();

export const pool = new Pool({
    user: process.env.USERNAME,
    password: process.env.PASSWORD,
    host: process.env.HOST,
    port: process.env.DBPORT,
    database: process.env.DATABASE,
})