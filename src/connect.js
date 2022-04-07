const Sequelize = require('sequelize');

const connection = new Sequelize('mysql', 'root', '240917', {
    host: 'localhost',
    dialect: 'mysql'
});

const Posts = sequelize.define('postagens', {
    titulo: {
        type: Sequelize.STRING
    },
    conteudo: {
        type: Sequelize.TEXT
    }
});

Posts.sync({force: true});
