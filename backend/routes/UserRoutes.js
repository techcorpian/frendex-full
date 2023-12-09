import express from 'express';
const router = express.Router();

import { getUsers, getTrendingUsers, getTopSpendersUsers, getTopSellersUsers, getMostPurchasedUsers, getMostFeesUsers, AvgPrice, AvgVolume, PercentageOfAvgVolume, ActiveUsers, PercentageActiveUsers, PercentageInActiveUsers, getFriendsById, PercentageOfAvgPrice } from '../controllers/UserController.js';

router.get('/',getUsers);

router.get('/trending',getTrendingUsers);

router.get('/topspenders',getTopSpendersUsers);

router.get('/topsellers',getTopSellersUsers);

router.get('/mostpurchased',getMostPurchasedUsers);

router.get('/mostfeesearned',getMostFeesUsers);

router.get('/avgprice', AvgPrice);

router.get('/percentageofavgprice', PercentageOfAvgPrice);

router.get('/avgvolume', AvgVolume);

router.get('/percentageofavgvolume', PercentageOfAvgVolume);

router.get('/active',ActiveUsers);

router.get('/percentageactiveusers', PercentageActiveUsers);

router.get('/percentageinactiveusers', PercentageInActiveUsers);

router.get('/friends/:id', getFriendsById);

export default router