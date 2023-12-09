import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { BsArrowUp } from 'react-icons/bs';
import { BsArrowDown } from 'react-icons/bs';

const MainGrid = () => {

    //active users
    const [activeusers, setActiveUsers] = useState([]);
    const [totalbuys, setTotalBuys] = useState([]);
    const [totalsells, setTotalSells] = useState([]);
    const [avgprice, setAvgPrice] = useState([]);
    const [percentageofavgprice, setPercentageOfAvgPrice] = useState([]);
    const [avgvolume, setAvgVolume] = useState([]);
    const [percentageofavgvolume, setPercentageOfAvgVolume] = useState([]);
    const [buyvolume, setBuyVolume] = useState([]);
    const [sellvolume, setSellVolume] = useState([]);
    const [percentageactiveusers, setPercentageActiveUsers] = useState([]);
    const [percentageinactiveusers, setPercentageInActiveUsers] = useState([]);
    const [percentageofbuys, setPercentageOfBuys] = useState([]);
    const [percentageofsells, setPercentageOfSells] = useState([]);
    const [percentageofbuyvolume, setPercentageOfBuyVolume] = useState([]);
    const [percentageofsellvolume, setPercentageOfSellVolume] = useState([]);

    const apiUrl = import.meta.env.VITE_REACT_APP_API_URL;

    useEffect(() => {
    axios.get(`${apiUrl}/users/active`)
    .then(res => setActiveUsers(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/trades/totalbuys`)
    .then(res => setTotalBuys(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/trades/totalsells`)
    .then(res => setTotalSells(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/users/avgprice`)
    .then(res => setAvgPrice(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/users/percentageofavgprice`)
    .then(res => setPercentageOfAvgPrice(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/users/avgvolume`)
    .then(res => setAvgVolume(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/trades/buyvolume`)
    .then(res => setBuyVolume(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/trades/sellvolume`)
    .then(res => setSellVolume(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/users/percentageactiveusers`)
    .then(res => setPercentageActiveUsers(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/users/percentageinactiveusers`)
    .then(res => setPercentageInActiveUsers(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/trades/percentageofbuys`)
    .then(res => setPercentageOfBuys(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/trades/percentageofsells`)
    .then(res => setPercentageOfSells(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/trades/percentageofbuyvolume`)
    .then(res => setPercentageOfBuyVolume(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/trades/percentageofsellvolume`)
    .then(res => setPercentageOfSellVolume(res.data))
    .catch(err => console.log(err));

    axios.get(`${apiUrl}/users/percentageofavgvolume`)
    .then(res => setPercentageOfAvgVolume(res.data))
    .catch(err => console.log(err));
    

    
 },[]);
    
 const griditems = [
    {
        "id": 1,
        "head": "Total volume",
        "value": `${(parseFloat(buyvolume) + parseFloat(sellvolume)).toFixed(2)} Ξ`,
        "percentage": `${(parseFloat(percentageofbuyvolume) + parseFloat(percentageofsellvolume)).toFixed(2)}`,
    },
    {
        "id": 2,
        "head": "Active users",
        "value": `${activeusers}`, // Note: accessing activeusers from MainGridDatas
        "percentage": `${(((parseInt(percentageactiveusers)-parseInt(percentageinactiveusers))/parseInt(activeusers)) * 100).toFixed(2)}`,
    },
    {
        "id": 3,
        "head": "Total buys",
        "value": `${totalbuys}`,
        "percentage": `${parseFloat(percentageofbuys).toFixed(2)}`,
    },
    {
        "id": 4,
        "head": "Total sells",
        "value": `${totalsells}`,
        "percentage": `${parseFloat(percentageofsells).toFixed(2)}`,
    },
    {
        "id": 5,
        "head": "Buy volume",
        "value": `${buyvolume} Ξ`,
        "percentage": `${parseFloat(percentageofbuyvolume).toFixed(2)}`,
    },
    {
        "id": 6,
        "head": "Sell volume",
        "value": `${sellvolume} Ξ`,
        "percentage": `${parseFloat(percentageofsellvolume).toFixed(2)}`,
    },
    {
        "id": 7,
        "head": "Avg. price",
        "value": `${avgprice} Ξ`,
        "percentage": `${percentageofavgprice}`,
    },
    {
        "id": 8,
        "head": "Avg. volume/user",
        "value": `${parseFloat(avgvolume).toFixed(2)} Ξ`,
        "percentage": `0.00`,
    }
];
    
  return (
    <>
    
    {
        griditems.map((data)=>(
    
    <div key={data.id} className='bg-zinc-900 p-2 sm:p-4 lg:p-5 rounded-lg drop-shadow-xl grid grid-cols-8 gap-3'>
        <div className='col-span-2'>
            <div className='p-2 lg:p-3 bg-black/20 w-[30px] h-[30px] lg:w-[40px] lg:h-[40px] xl:w-[60px] xl:h-[60px] rounded-lg lg:rounded-lg mt-3'>
            {data.percentage > 0 ?
                <BsArrowUp className='text-lime-400 text-4xl'/> :
                <BsArrowDown className='text-red-500 text-4xl'/>
            }
            </div>
        </div>
        <div className='col-span-6'>
            <p className='text-xs md:text-base font-light text-zinc-500'>{data.head}</p>
            <p className='font-bold text-sm text-white lg:text-xl xl:text-2xl'>
                {data.value} 
            </p>
            {data.percentage >= 0 ?
                <p className='text-xs md:text-sm lg:text-lg text-lime-400'>{data.percentage}% </p> :
                <p className='text-xs md:text-sm lg:text-lg text-red-500'>{data.percentage}% </p>
            }
            

        </div>
    </div>
          ))
    }
    </>
  )

  
}

export default MainGrid