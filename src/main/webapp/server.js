// server.js
const express = require('express');
const oracledb = require('oracledb');
const app = express();
const port = 3000;

app.get('/getData', async (req, res) => {
  let connection;

  try {
    connection = await oracledb.getConnection({
      user: 'vamsi',
      password: 'vamsi123',
      connectString: 'localhost:1521:xe'
    });

    const result = await connection.execute('SELECT * FROM bookingdb');
    res.json(result.rows);

  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal Server Error' });

  } finally {
    if (connection) {
      try {
        await connection.close();
      } catch (err) {
        console.error(err);
      }
    }
  }
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});
