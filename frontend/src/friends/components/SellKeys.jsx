import React, { useState, useEffect } from 'react'

const SellKeys = ({sellkeys}) => {

    const sellkeyvalue = parseFloat(sellkeys);
    
const [inputValue, setInputValue] = useState(1);
const [sellkey, setSellKey] = useState(sellkeyvalue);

const handleCountChange = (event) => {
    setInputValue(event.target.value);
}

const result = sellkey * inputValue;

useEffect(() => {
    setSellKey(sellkeyvalue);
  }, [sellkeyvalue]);
  return (
    <div className='bg-zinc-900 px-6 py-4  rounded-lg'>
        <h3 className='font-bold text-2xl text-white mb-3'>Sell keys</h3>
        <p className='text-zinc-400 mb-1'>
            Value for quantity: <span className='text-white'>
                {result} Ξ
            </span>
        </p>
        <p className='text-sm text-zinc-500 mb-3'>
            Your balance: 
            0
            keys
        </p>
        <div className='grid grid-cols-2 '>
            <input onChange={handleCountChange} className='bg-black px-4 py-3 rounded-lg mr-3 text-white' type="number" placeholder='quantity' value={inputValue} />
            <button className='bg-blue-500 text-white rounded-lg px-4 py-3'>Sell Now</button>
        </div>
    </div>
  )
}

export default SellKeys