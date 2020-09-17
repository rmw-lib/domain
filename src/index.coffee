#!/usr/bin/env coffee

import console from './console'

export default (a,b)=>
  a + b

export domain-sign = (a,b)=>
  c = []
  for i, pos in a
    c.push i+b[pos]
  c
