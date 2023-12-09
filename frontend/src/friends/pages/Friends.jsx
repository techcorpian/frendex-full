import React, { useEffect, useState } from 'react';
import ActivityGrid from '../components/ActivityGrid'
import StatsGrid from '../components/StatsGrid'
import BuyKeys from '../components/BuyKeys'
import SellKeys from '../components/SellKeys'
import NWKeyholders from '../components/NWKeyholders'
import MiddleGrid from '../components/MiddleGrid'

import axios from 'axios';
import { useParams } from 'react-router-dom';

const Friends = () => {
  const [show, setShow] = useState([]);
  const [holding, setHolding] = useState([]);
  const [holder, setHolder] = useState([]);
  const { id } = useParams();
  const apiUrl = import.meta.env.VITE_REACT_APP_API_URL;
  useEffect(() => {
      axios
        .get(`${apiUrl}/users/friends/${ id }`)
        .then(res => setShow(res.data))
        .catch(err => console.log(err));

        axios
        .get(`${apiUrl}/keys/holding/${ id }`)
        .then(res => setHolding(res.data))
        .catch(err => console.log(err));

        axios
        .get(`${apiUrl}/keys/holders/${ id }`)
        .then(res => setHolder(res.data))
        .catch(err => console.log(err));
  },[]);

  return (
    <div className='p-4 rounded-lg bg-zinc-800'>
        <h1 className='text-white mx-2 mt-4 mb-2 font-bold text-2xl flex flex-row justify-between items-center'>
            Account activity 
            <div> 
                <button className='bg-blue-500 text-white px-3 py-2 text-sm rounded-lg mr-3 font-normal'>Add to Group</button>
                <button className='bg-blue-500 text-white px-3 py-2 text-sm rounded-lg font-normal'>Follow</button>
            </div>
        </h1>
        <div className='grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-4 mx-2 gap-4 pt-2 pb-3'>
        <ActivityGrid keyprice = {show.key_price} keysupply = {show.supply} points = {show.points} holding = {holding.holding_count} holder = {holder.holder_count}/>
        <StatsGrid ethbalance = {show.eth_balance} totalspent = {show.total_spent} pandl = {show.pandl} total_held = {holding.total_hold_value}/>
        <BuyKeys buykeys = {show.buy_key}/>
        <SellKeys sellkeys = {show.sell_key}/>
        </div>
        <p className='text-white font-bold mb-1 mt-4 ml-2'>Noteworthy keyholders</p>
        <div className='mt-4 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-2 md:gap-4 mx-2'>
          <NWKeyholders />
        </div>
        <MiddleGrid />
    </div>
  )
}

export default Friends