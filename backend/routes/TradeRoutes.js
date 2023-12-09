import express from 'express';
const router = express.Router();

import { BuyVolume, SellVolume, TotalVolume, TotalBuys, TotalSells, PercentageOfBuys, PercentageOfSells, PercentageOfBuyVolume, PercentageOfSellVolume} from '../controllers/TradeController.js';

router.get('/buyvolume', BuyVolume);

router.get('/sellvolume', SellVolume);

router.get('/totalvolume', TotalVolume);

router.get('/totalbuys', TotalBuys);

router.get('/totalsells', TotalSells);

router.get('/percentageofbuys', PercentageOfBuys);

router.get('/percentageofsells', PercentageOfSells);

router.get('/percentageofbuyvolume', PercentageOfBuyVolume);

router.get('/percentageofsellvolume', PercentageOfSellVolume);

export default router