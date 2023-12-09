import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom'
import axios from 'axios';
import { useParams } from 'react-router-dom';

const NWKeyholders = () => {
    const [networthy, setNetWorthy] = useState([]);
    const { id } = useParams();
    useEffect(() => {
        axios.get(`http://35.200.251.190:8080/keys/networthy/${id}`)
        .then((res) => {
            setNetWorthy(res.data)
        })
            .catch((err) => {
            console.log(err);
        });
            },[]);
  return (
    <>
    {
        networthy.map((item)=>(
        <Link className='bg-zinc-900 px-6 pb-3 pt-6 rounded-lg w-full'>
            <div className='flex flex-row items-center'>
                <div className='mt-[-15px]'>
                   <div className='w-[40px] h-[40px] bg-gradient-to-br from-lime-500 to-blue-600 mr-4 rounded-full relative'>
                       <img src="" alt="" className='object-contain p-3'/>
                    </div> 
                </div>
                <div className=' overflow-hidden'>
                    <div className='mb-1'>
                        <div className='text-white font-mono text-base xl:text-lg mt-[-5px] mb-[-5px] flex flex-row items-center gap-2'>
                            <div className='text-ellipsis overflow-hidden whitespace-nowrap'>
                                {item.username}
                            </div>
                        </div>
                        <div className='text-xs text-zinc-400 mt-2'>{item.acc_address}</div>
                    </div>
                    <div className='text-white font-mono text-xs mb-4 mt-2'>
                        <span className='text-zinc-400'>
                            Latest key value: </span>
                            {item.key_price} Ξ
                    </div>
                </div>
            </div>
        </Link>
                    ))
  
  }
</>
  )
}

export default NWKeyholders