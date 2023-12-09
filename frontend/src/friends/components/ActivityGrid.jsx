import React from 'react'
import { Link } from 'react-router-dom'

const ActivityGrid = ({keyprice, keysupply, points, holder, holding}) => {

  return (

        <div className='bg-zinc-900 px-6 py-4  rounded-lg'>
            <div className='flex flex-row mt-4 '>
                <span className='bg-zinc-500 rounded-full h-[18px] w-[18px] border-4 border-zinc-900 relative left-[45px] top-[-5px]'>

                </span>
                <img src="" alt="" className='w-[40px] h-[40px] rounded-full mr-4' />
                <div className='grow'>
                    <Link>
                    <div className='text-white font-mono text-lg mt-1 mb-4'>
                        <span>0x4cd...cb27</span>
                        Icon
                    </div>
                    </Link>
                </div>
            </div>
            <p className='text-white font-mono text-xs mx-2 mb-1'>
                <span className='text-zinc-400'>Latest key price </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                {keyprice} Ξ
            </p>
            <p className='text-white font-mono text-xs mx-2 mb-1'>
                <span className='text-zinc-400'>Key supply</span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                {keysupply}

            </p>
            <p className='text-white font-mono text-xs mx-2 mb-1'>
                <span className='text-zinc-400'>Points</span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                {points}()
            </p>
            <p className='text-white font-mono text-xs mx-2 mb-1'>
                <span className='text-zinc-400'>Holders | Holding</span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                {holder} | {holding}
            </p>
            
        </div>
    
  )
}

export default ActivityGrid