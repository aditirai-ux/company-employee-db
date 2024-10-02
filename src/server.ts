import express from 'express';
import { QueryResult } from 'pg';
import { pool, connectToDB } from './connection.js';

await connectToDB();

const PORT = process.env.PORT || 3001;
const app = express();

// MIDDLEWARE
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// POOL queries

// inquirer queries

// LISTEN
app.use((_req, res) => {
    res.status(404).end();
  });
  
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });