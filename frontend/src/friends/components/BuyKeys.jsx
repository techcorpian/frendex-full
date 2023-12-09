import React, { useState, useEffect } from 'react'

const BuyKeys = ({ buykeys }) => {

const buykeyvalue = parseFloat(buykeys);

const [inputValue, setInputValue] = useState(1);
const [buykey, setBuyKey] = useState(buykeyvalue);

const handleCountChange = (event) => {
    setInputValue(event.target.value);
}

const result = buykey * inputValue;

useEffect(() => {
    setBuyKey(buykeyvalue);
  }, [buykeyvalue]);
  return (
    <div className='bg-zinc-900 px-6 py-4 rounded-lg'>
        <h3 className='font-bold text-2xl text-white mb-3'>
            Buy keys
        </h3>
        <p className='text-zinc-400 mb-1'>Price for quantity: <span className='text-white'>
                {result} Ξ
            </span>
        </p>
        <p className='text-sm text-zinc-500 mb-3'>
            (Incl. base price + friend.tech fees)
        </p>
        <div className='grid grid-cols-2'>
            <input onChange={handleCountChange} className='bg-black px-4 py-3 rounded-lg mr-3 text-white' type="number" placeholder='quantity' value={inputValue} />
            <button className='bg-lime-400 text-black rounded-lg px-4 py-3'>Buy Now</button>
        </div>
    </div>
  )
}

export default BuyKeys