#!/usr/bin/env coffee

import console from './console'
import Bls from 'bls-wasm'
import ENV from '@rmw/env'
import fs from 'fs-extra'

import blake3 from 'blake3'

export TIMEBEGIN = 1600000000

export hash = (buf)=>
  if buf.length <= 32
    return buf
  else
    return blake3.hash(buf)

export default (domain)=>
  await Bls.init(Bls.BLS12_381)
  sec = new Bls.SecretKey()
  keypath = ENV.CONFIG+"/id_bls"
  if await fs.exists keypath
    bin = fs.readFileSync keypath
    sec.deserialize bin
  else
    sec.setByCSPRNG()
    bin = sec.serialize()
    fs.mkdirSync ENV.CONFIG, {recursive:true}
    fs.writeFileSync ENV.CONFIG+"/id_bls", bin
    fs.writeFileSync ENV.CONFIG+"/id_bls.pub", sec.getPublicKey().serialize()

  time = parseInt new Date()/1000 - TIMEBEGIN

  time_buffer = Buffer.allocUnsafe 6
  time_buffer.writeIntBE(time, 0, 6)

  buf = Buffer.concat [time_buffer, Buffer.from domain]
  buf = hash buf

  return [
    time
    Buffer.from sec.sign(buf).serialize()
  ]
