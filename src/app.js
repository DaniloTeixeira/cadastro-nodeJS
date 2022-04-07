// const express = require('express');
// const app = express();


// //-> A função send() só pode ser chamada uma vez dentro de uma rota/método
// //-> __dirname retorna o caminho absoluto(raíz) do diretório

// app.get('/', (req, res) => {
//     res.sendFile(`${__dirname}/index.html`);
// });

// app.get('/sobre', (req, res) => {
//     res.send('Sobre mim');
// });

// app.get('/blog', (req, res) => {
//     res.send('Divirta-se com meu blog pessoal');
// });

// app.get('/ola/:id/:nome/:idade', (req, res) => {
//     res.send(`Olá ${req.params.nome}, sua idade é: ${req.params.idade} anos e seu id é: ${req.params.id}.`);
// });

// //-> Essa função deve ser a última do código
// app.listen(8000, () => console.log('Servidor rodando na url http://localhost:8000'));