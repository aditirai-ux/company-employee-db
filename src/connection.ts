// DEPENDENCIES
import dotenv from 'dotenv';
dotenv.config();
import pg from 'pg';

// CREATE connection pool
const { Pool } = pg;

const pool = new Pool({
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    host: 'localhost',
    database: process.env.DB_NAME,
    port: 5432,
});
const connectToDB = async () => {
    try {
        await pool.connect();
        console.log('Connected to database');
    } catch (error) {
        console.error('Error connecting to database', error);
        process.exit(1);
    }
};
// EXPORT POOL
export { pool, connectToDB };