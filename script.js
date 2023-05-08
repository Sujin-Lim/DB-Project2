/**
 * 
 */

const oracledb = require('oracledb');

const config = {
  user: 'button_yj',
  password: '1234',
  connectString: 'jdbc:oracle:thin:@localhost:1521:xe'
};

oracledb.getConnection(config, (error, connection) => {
  if (error) {
    console.error(error);
    return;
  }
  console.log('Connected to Oracle database');
});
