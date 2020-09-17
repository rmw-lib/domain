#!/usr/bin/env coffee
import domain-sign from '@rmw/domain-sign'
# import {domain-sign as Xxx} from '@rmw/domain-sign'
import test from 'tape-catch'

test 'domain-sign', (t)=>
  t.equal domain-sign(1,2),3
  # t.deepEqual Xxx([1],[2]),[3]
  t.end()
