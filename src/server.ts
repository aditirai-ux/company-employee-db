import express from 'express';
import { QueryResult } from 'pg';
import inquirer from 'inquirer';
import { pool, connectToDB } from './connection.js';

await connectToDB();

const PORT = process.env.PORT || 3001;
const app = express();

// MIDDLEWARE
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// queries
//view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role

// inquirer queries
inquirer.prompt([
    {
        type: 'list',
        name: 'name',
        message: 'What do you want to do?',
        choices: ['View all departments', 'View all roles', 'View all employees', 'Add a department', 'Add a role', 'Add an employee', 'Update an employee role'],
    },
]).then((answers) => {
    console.log(answers);
    if (answers.name === 'View all departments') {
        pool.query('SELECT * FROM department', (err: Error, result: QueryResult) => {
            if (err) {
                console.log(err);
            } else {
                console.log(`${result.rowCount} rows returned`);
            }
        });
    }
}).catch((error) => {
    console.error(error);
});

// inquirer queries


// LISTEN
app.use((_req, res) => {
    res.status(404).end();
  });
  
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });