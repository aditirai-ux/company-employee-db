// DEPENDENCIES
import dotenv from 'dotenv';
dotenv.config();
import pg from 'pg';

// DATA
const { Pool } = pg;

const pool = new Pool({
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    host: 'localhost',
    database: process.env.DB_NAME,
    port: 5432,
});