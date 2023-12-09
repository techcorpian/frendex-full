import express from 'express';
const router = express.Router();

import { getHoldingById, getHolderById, getNetWorthy } from '../controllers/KeyController.js';

router.get('/holding/:id', getHoldingById);

router.get('/holders/:id', getHolderById);

router.get('/networthy/:id', getNetWorthy);



export default router