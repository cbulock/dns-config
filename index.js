const fs = require('fs');
const path = require('path');
module.exports = fs.readFileSync(path.resolve(__dirname, './hosts'), 'utf8');