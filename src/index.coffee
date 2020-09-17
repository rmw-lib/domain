#!/usr/bin/env coffee

import console from './console'
import Bls from 'bls-wasm'
import * as CONFIG from '@rmw/config'

export default (host)=>
  await Bls.init(Bls.BLS12_381)
  return
  # CONFIG.get 'test'
  # process.exit()
