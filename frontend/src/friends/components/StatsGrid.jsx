import React from 'react'

const StatsGrid = ({ethbalance, totalspent, pandl, total_held}) => {
  return (
    <div className='bg-zinc-900 px-6 py-4  rounded-lg'>
        <h3 className='font-bold text-lg text-white mb-2'>stats</h3>
        <div className='font-mono mt-1'>
            <p className='text-zinc-400 text-sm mb-1'>ETH balance
                &nbsp;&nbsp;&nbsp;   
                <span className='text-white'>   
                    {ethbalance} Ξ
                </span>
            </p>
            <p className='text-zinc-400 text-sm mb-1'>Total Spent 
                &nbsp;&nbsp;&nbsp;  
                <span className='text-white'>
                    {totalspent} Ξ
                </span>
            </p>
            <p className='text-zinc-400 text-sm mb-1'>Total Sold  
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span className='text-white'>
                    0.001
                    Ξ
                </span>
            </p>
            <p className='text-zinc-400 text-sm mb-1'>Value Held 
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span className='text-white'>
                    {total_held > 0 ? total_held : '0.00'} Ξ
                </span>
            </p>
            <p className='text-zinc-400 text-sm mb-1'>P & L  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span className='text-white'>
                    {pandl} Ξ
                </span>
            </p>
        </div>
    </div>
  )
}

export default StatsGrid