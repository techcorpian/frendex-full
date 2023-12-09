import express from 'express';
import cors from 'cors';
import UserRoutes from './routes/UserRoutes.js';
import TradeRoutes from './routes/TradeRoutes.js';
import KeyRoutes from './routes/KeyRoutes.js';
import * as dotenv from "dotenv";
dotenv.config();


const app = express();
app.use(cors());

//Allow custom origins
// app.use(
//     cors({
//         origin: 'http://localhost:3000',
//         methods: ['GET', 'POST', 'PUT', 'DELETE'],
// allowedHeaders: ['Content-Type'],
// })
// );

app.use(express.json());

app.get('/', async (req, res) => {
   res.json('app deployed');
 });

app.use('/users', UserRoutes);
app.use('/trades', TradeRoutes);
app.use('/keys', KeyRoutes);

app.listen(process.env.PORT, () => {
   console.log('App is listening to the',process.env.PORT);
});
