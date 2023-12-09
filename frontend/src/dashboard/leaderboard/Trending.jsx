import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom'
import Loading from '../components/Loading'
// import { lbdatas } from '../datas/LBDatas'

const Trending = () => {
    const [trending, setTrending] = useState([]);
    const [loading, setLoading] = useState(false);
    const apiUrl = import.meta.env.VITE_REACT_APP_API_URL;

    useEffect(() => {
        setLoading(true);
        axios.get(`${apiUrl}/users/trending`)
        .then((res) => {
        setTrending(res.data)
        setLoading(false);
    })
        .catch((err) => {
        console.log(err);
        setLoading(false);
    });
        },[]);
  return (
      <>
          {loading ? (
        <Loading />
    ) : (

    <div>
        {
        trending.map((item)=>(
        <Link to={`Friends/${item.id}`}>

        <div className='text-xs text-white bg-zinc-900 p-5 m-2 grid grid-cols-6 sm:grid-cols-5 md:grid-cols-7 gap-4 rounded-lg border-2 border-zinc-900 hover:border-lime-300'>
            <div className='flex flex-row col-span-4 sm:col-span-5 md:col-span-2'>
                <Link className='flex flex-row'>
                    <img src={`../image/{item.image}`} alt="" className='w-[40px] h-[40px] rounded-full mr-4'/>
                    <div>
                        <p className='font-mono text-white'>{item.acc_address}</p>
                        <p className='text-sm text-zinc-400'>Account address</p>
                    </div>
                </Link>
            </div>
            <div className='text-right sm:text-left col-span-2 sm:col-span-1 md:col-span-1'>
                <p className='font-mono text-white'>{item.key_price} Ξ</p>
                <p className='text-sm text-zinc-400'>Key price</p>
            </div>
            <div className='col-span-3 sm:col-span-1'>
                <p className='font-mono text-white'>{item.supply}</p>
                <p className='text-sm text-zinc-400'>Supply</p>
            </div>
            <div className='col-span-3 sm:col-span-1'>
                <p className='font-mono text-white'>{item.buys}</p>
                <p className='text-sm text-zinc-400'>Times bought</p>
            </div>
            <div className='col-span-3 sm:col-span-1'>
                <p className='font-mono text-white'>{item.sells}</p>
                <p className='text-sm text-zinc-400'>Times sold</p>
            </div>
            <div className='col-span-3 sm:col-span-1'>
                <p className='font-mono text-white'>{item.unique_buyers}</p>
                <p className='text-sm text-zinc-400'>Unique buyers</p>
            </div>
        </div>
            
            
        </Link>
            ))
        }

    </div>
)}
    </>
  )
}

export default Trending