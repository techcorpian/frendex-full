import React from 'react'
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import MainHeader from './shared/components/MainHeader'
import Dashboard from './dashboard/pages/Dashboard';
import Presales from './presales/pages/Presales';
import Friends from './friends/pages/Friends';

const App = () => {
  return (
    <main className="mx-5 md:mx-auto md:container pb-10">
    <Router>
      <MainHeader />
        <Routes>
          <Route index element={<Dashboard />} />
          <Route path="/Pre-sales" element={<Presales />} />
          <Route path="/Friends/:id" element={<Friends />} />
        </Routes>
    </Router>
    </main>
  )
}

export default App