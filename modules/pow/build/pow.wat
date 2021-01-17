(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1164) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1232) "\03\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1232))
 (export "memory" (memory $0))
 (export "__new" (func $~lib/rt/pure/__new))
 (export "__renew" (func $~lib/rt/pure/__renew))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "action" (func $assembly/index/action))
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 272
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 274
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 287
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 200
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 202
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $5
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    local.get $4
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $2
   end
  end
  local.get $4
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $3
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1184
    i32.const 223
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741820
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $3
   else
    local.get $1
   end
   local.set $1
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 238
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $5
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 239
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $4
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 255
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 380
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1184
    i32.const 387
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1184
    i32.const 400
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 1264
  i32.const 0
  i32.store
  i32.const 2832
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 1264
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 1264
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 1264
  i32.const 2836
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 1264
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 1056
   i32.const 1184
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $0
  i32.const 12
  i32.le_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.set $2
   local.get $1
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 333
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1184
     i32.const 346
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1184
   i32.const 360
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   local.get $2
   i32.const 1
   i32.const 27
   local.get $2
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $2
   local.get $2
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1184
    i32.const 498
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 500
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $1
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $1
 )
 (func $~lib/rt/pure/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 275
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/moveBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 1260
  i32.ge_u
  if
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $2
 )
 (func $~lib/rt/pure/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 288
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  local.get $1
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 1260
  i32.lt_u
  if
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/checkUsedBlock
   local.get $2
   call $~lib/rt/tlsf/moveBlock
   local.set $0
  else
   block $__inlined_func$~lib/rt/tlsf/reallocateBlock
    global.get $~lib/rt/tlsf/ROOT
    local.set $3
    local.get $0
    call $~lib/rt/tlsf/checkUsedBlock
    local.set $0
    block $folding-inner0
     local.get $2
     call $~lib/rt/tlsf/prepareSize
     local.tee $5
     local.get $0
     i32.load
     local.tee $6
     i32.const -4
     i32.and
     local.tee $4
     i32.le_u
     br_if $folding-inner0
     local.get $0
     i32.const 4
     i32.add
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.add
     local.tee $7
     i32.load
     local.tee $8
     i32.const 1
     i32.and
     if
      local.get $5
      local.get $4
      i32.const 4
      i32.add
      local.get $8
      i32.const -4
      i32.and
      i32.add
      local.tee $4
      i32.le_u
      if
       local.get $3
       local.get $7
       call $~lib/rt/tlsf/removeBlock
       local.get $0
       local.get $4
       local.get $6
       i32.const 3
       i32.and
       i32.or
       i32.store
       br $folding-inner0
      end
     end
     local.get $3
     local.get $0
     local.get $2
     call $~lib/rt/tlsf/moveBlock
     local.set $0
     br $__inlined_func$~lib/rt/tlsf/reallocateBlock
    end
    local.get $3
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/prepareBlock
   end
  end
  local.get $0
  i32.const 4
  i32.add
  local.tee $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1260
  i32.gt_u
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   local.tee $2
   i32.const -268435456
   i32.and
   local.get $2
   i32.const 1
   i32.add
   i32.const -268435456
   i32.and
   i32.ne
   if
    i32.const 0
    i32.const 1120
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1120
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 1260
  i32.gt_u
  if
   local.get $0
   i32.const 20
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/math/NativeMath.pow (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 f64)
  (local $19 f64)
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $folding-inner0
      local.get $1
      f64.abs
      f64.const 2
      f64.le
      if
       local.get $1
       f64.const 2
       f64.eq
       br_if $folding-inner0
       local.get $1
       f64.const 0.5
       f64.eq
       if
        local.get $0
        f64.sqrt
        f64.abs
        f64.const inf
        local.get $0
        f64.const -inf
        f64.ne
        select
        return
       end
       local.get $1
       f64.const -1
       f64.eq
       br_if $folding-inner1
       local.get $1
       f64.const 1
       f64.eq
       if
        local.get $0
        return
       end
       local.get $1
       f64.const 0
       f64.eq
       if
        f64.const 1
        return
       end
      end
      local.get $0
      i64.reinterpret_f64
      local.tee $11
      i32.wrap_i64
      local.set $13
      local.get $11
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee $12
      i32.const 2147483647
      i32.and
      local.set $5
      local.get $1
      i64.reinterpret_f64
      local.tee $11
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee $3
      i32.const 2147483647
      i32.and
      local.tee $6
      local.get $11
      i32.wrap_i64
      local.tee $14
      i32.or
      i32.eqz
      if
       f64.const 1
       return
      end
      i32.const 1
      local.get $14
      i32.const 0
      local.get $6
      i32.const 2146435072
      i32.eq
      select
      i32.const 1
      local.get $6
      i32.const 2146435072
      i32.gt_u
      i32.const 1
      local.get $13
      i32.const 0
      local.get $5
      i32.const 2146435072
      i32.eq
      select
      local.get $5
      i32.const 2146435072
      i32.gt_s
      select
      select
      select
      if
       local.get $0
       local.get $1
       f64.add
       return
      end
      local.get $12
      i32.const 0
      i32.lt_s
      if (result i32)
       local.get $6
       i32.const 1128267776
       i32.ge_u
       if (result i32)
        i32.const 2
       else
        local.get $6
        i32.const 1072693248
        i32.ge_u
        if (result i32)
         i32.const 2
         local.get $14
         local.get $6
         local.get $6
         i32.const 20
         i32.shr_u
         i32.const 1023
         i32.sub
         local.tee $2
         i32.const 20
         i32.gt_s
         local.tee $15
         select
         local.tee $17
         i32.const 52
         i32.const 20
         local.get $15
         select
         local.get $2
         i32.sub
         local.tee $2
         i32.shr_u
         local.tee $15
         i32.const 1
         i32.and
         i32.sub
         i32.const 0
         local.get $17
         local.get $15
         local.get $2
         i32.shl
         i32.eq
         select
        else
         i32.const 0
        end
       end
      else
       i32.const 0
      end
      local.set $2
      local.get $14
      i32.eqz
      if
       local.get $6
       i32.const 2146435072
       i32.eq
       if
        local.get $13
        local.get $5
        i32.const 1072693248
        i32.sub
        i32.or
        if
         local.get $5
         i32.const 1072693248
         i32.ge_s
         if
          local.get $1
          f64.const 0
          local.get $3
          i32.const 0
          i32.ge_s
          select
          return
         else
          f64.const 0
          local.get $1
          f64.neg
          local.get $3
          i32.const 0
          i32.ge_s
          select
          return
         end
         unreachable
        else
         f64.const nan:0x8000000000000
         return
        end
        unreachable
       end
       local.get $6
       i32.const 1072693248
       i32.eq
       if
        local.get $3
        i32.const 0
        i32.ge_s
        if
         local.get $0
         return
        end
        br $folding-inner1
       end
       local.get $3
       i32.const 1073741824
       i32.eq
       br_if $folding-inner0
       local.get $3
       i32.const 1071644672
       i32.eq
       if
        local.get $12
        i32.const 0
        i32.ge_s
        if
         local.get $0
         f64.sqrt
         return
        end
       end
      end
      local.get $0
      f64.abs
      local.set $4
      local.get $13
      i32.eqz
      if
       i32.const 1
       local.get $5
       i32.const 1072693248
       i32.eq
       local.get $5
       i32.const 2146435072
       i32.eq
       i32.const 1
       local.get $5
       select
       select
       if
        f64.const 1
        local.get $4
        f64.div
        local.get $4
        local.get $3
        i32.const 0
        i32.lt_s
        select
        local.set $0
        local.get $12
        i32.const 0
        i32.lt_s
        if (result f64)
         local.get $2
         local.get $5
         i32.const 1072693248
         i32.sub
         i32.or
         if (result f64)
          local.get $0
          f64.neg
          local.get $0
          local.get $2
          i32.const 1
          i32.eq
          select
         else
          local.get $0
          local.get $0
          f64.sub
          local.tee $0
          local.get $0
          f64.div
         end
        else
         local.get $0
        end
        return
       end
      end
      local.get $12
      i32.const 0
      i32.lt_s
      if (result f64)
       local.get $2
       i32.eqz
       if
        local.get $0
        local.get $0
        f64.sub
        local.tee $0
        local.get $0
        f64.div
        return
       end
       f64.const -1
       f64.const 1
       local.get $2
       i32.const 1
       i32.eq
       select
      else
       f64.const 1
      end
      local.set $8
      local.get $6
      i32.const 1105199104
      i32.gt_u
      if (result f64)
       local.get $6
       i32.const 1139802112
       i32.gt_u
       if
        local.get $5
        i32.const 1072693247
        i32.le_s
        if
         f64.const inf
         f64.const 0
         local.get $3
         i32.const 0
         i32.lt_s
         select
         return
        end
        local.get $5
        i32.const 1072693248
        i32.ge_s
        if
         f64.const inf
         f64.const 0
         local.get $3
         i32.const 0
         i32.gt_s
         select
         return
        end
       end
       local.get $5
       i32.const 1072693247
       i32.lt_s
       if
        local.get $8
        f64.const 1.e+300
        f64.mul
        f64.const 1.e+300
        f64.mul
        local.get $8
        f64.const 1e-300
        f64.mul
        f64.const 1e-300
        f64.mul
        local.get $3
        i32.const 0
        i32.lt_s
        select
        return
       end
       local.get $5
       i32.const 1072693248
       i32.gt_s
       if
        local.get $8
        f64.const 1.e+300
        f64.mul
        f64.const 1.e+300
        f64.mul
        local.get $8
        f64.const 1e-300
        f64.mul
        f64.const 1e-300
        f64.mul
        local.get $3
        i32.const 0
        i32.gt_s
        select
        return
       end
       local.get $4
       f64.const 1
       f64.sub
       local.tee $0
       f64.const 1.4426950216293335
       f64.mul
       local.tee $4
       local.get $0
       f64.const 1.9259629911266175e-08
       f64.mul
       local.get $0
       local.get $0
       f64.mul
       f64.const 0.5
       local.get $0
       f64.const 0.3333333333333333
       local.get $0
       f64.const 0.25
       f64.mul
       f64.sub
       f64.mul
       f64.sub
       f64.mul
       f64.const 1.4426950408889634
       f64.mul
       f64.sub
       local.tee $7
       f64.add
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.set $0
       local.get $7
       local.get $0
       local.get $4
       f64.sub
       f64.sub
      else
       local.get $5
       i32.const 1048576
       i32.lt_s
       if (result i32)
        local.get $4
        f64.const 9007199254740992
        f64.mul
        local.tee $4
        i64.reinterpret_f64
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.set $5
        i32.const -53
       else
        i32.const 0
       end
       local.get $5
       i32.const 20
       i32.shr_s
       i32.const 1023
       i32.sub
       i32.add
       local.set $3
       local.get $5
       i32.const 1048575
       i32.and
       local.tee $2
       i32.const 1072693248
       i32.or
       local.set $5
       local.get $2
       i32.const 235662
       i32.le_s
       if (result i32)
        i32.const 0
       else
        local.get $2
        i32.const 767610
        i32.lt_s
        if (result i32)
         i32.const 1
        else
         local.get $3
         i32.const 1
         i32.add
         local.set $3
         local.get $5
         i32.const -1048576
         i32.add
         local.set $5
         i32.const 0
        end
       end
       local.set $2
       local.get $4
       i64.reinterpret_f64
       i64.const 4294967295
       i64.and
       local.get $5
       i64.extend_i32_s
       i64.const 32
       i64.shl
       i64.or
       f64.reinterpret_i64
       local.tee $9
       f64.const 1.5
       f64.const 1
       local.get $2
       select
       local.tee $10
       f64.sub
       local.tee $18
       f64.const 1
       local.get $9
       local.get $10
       f64.add
       f64.div
       local.tee $19
       f64.mul
       local.tee $7
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.tee $4
       local.get $4
       f64.mul
       local.set $16
       local.get $4
       local.get $16
       f64.const 3
       f64.add
       local.get $7
       local.get $7
       f64.mul
       local.tee $0
       local.get $0
       f64.mul
       local.get $0
       local.get $0
       local.get $0
       local.get $0
       local.get $0
       f64.const 0.20697501780033842
       f64.mul
       f64.const 0.23066074577556175
       f64.add
       f64.mul
       f64.const 0.272728123808534
       f64.add
       f64.mul
       f64.const 0.33333332981837743
       f64.add
       f64.mul
       f64.const 0.4285714285785502
       f64.add
       f64.mul
       f64.const 0.5999999999999946
       f64.add
       f64.mul
       local.get $19
       local.get $18
       local.get $4
       local.get $5
       i32.const 1
       i32.shr_s
       i32.const 536870912
       i32.or
       i32.const 524288
       i32.add
       local.get $2
       i32.const 18
       i32.shl
       i32.add
       i64.extend_i32_s
       i64.const 32
       i64.shl
       f64.reinterpret_i64
       local.tee $0
       f64.mul
       f64.sub
       local.get $4
       local.get $9
       local.get $0
       local.get $10
       f64.sub
       f64.sub
       f64.mul
       f64.sub
       f64.mul
       local.tee $9
       local.get $4
       local.get $7
       f64.add
       f64.mul
       f64.add
       local.tee $4
       f64.add
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.tee $0
       f64.mul
       local.tee $10
       local.get $9
       local.get $0
       f64.mul
       local.get $4
       local.get $0
       f64.const 3
       f64.sub
       local.get $16
       f64.sub
       f64.sub
       local.get $7
       f64.mul
       f64.add
       local.tee $4
       f64.add
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.tee $0
       f64.const 0.9617967009544373
       f64.mul
       local.tee $7
       local.get $0
       f64.const -7.028461650952758e-09
       f64.mul
       local.get $4
       local.get $0
       local.get $10
       f64.sub
       f64.sub
       f64.const 0.9617966939259756
       f64.mul
       f64.add
       f64.const 1.350039202129749e-08
       f64.const 0
       local.get $2
       select
       f64.add
       local.tee $4
       f64.add
       f64.const 0.5849624872207642
       f64.const 0
       local.get $2
       select
       local.tee $9
       f64.add
       local.get $3
       f64.convert_i32_s
       local.tee $10
       f64.add
       i64.reinterpret_f64
       i64.const -4294967296
       i64.and
       f64.reinterpret_i64
       local.set $0
       local.get $4
       local.get $0
       local.get $10
       f64.sub
       local.get $9
       f64.sub
       local.get $7
       f64.sub
       f64.sub
      end
      local.set $4
      local.get $1
      local.get $1
      i64.reinterpret_f64
      i64.const -4294967296
      i64.and
      f64.reinterpret_i64
      local.tee $7
      f64.sub
      local.get $0
      f64.mul
      local.get $1
      local.get $4
      f64.mul
      f64.add
      local.tee $1
      local.get $7
      local.get $0
      f64.mul
      local.tee $0
      f64.add
      local.tee $4
      i64.reinterpret_f64
      local.tee $11
      i32.wrap_i64
      local.set $3
      local.get $11
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee $2
      i32.const 1083179008
      i32.ge_s
      if
       local.get $3
       local.get $2
       i32.const 1083179008
       i32.sub
       i32.or
       local.get $1
       f64.const 8.008566259537294e-17
       f64.add
       local.get $4
       local.get $0
       f64.sub
       f64.gt
       i32.or
       br_if $folding-inner2
      else
       local.get $2
       i32.const 2147483647
       i32.and
       i32.const 1083231232
       i32.ge_u
       i32.const 0
       local.get $3
       local.get $2
       i32.const -1064252416
       i32.sub
       i32.or
       local.get $1
       local.get $4
       local.get $0
       f64.sub
       f64.le
       i32.or
       select
       br_if $folding-inner3
      end
      local.get $2
      i32.const 2147483647
      i32.and
      local.tee $5
      i32.const 20
      i32.shr_u
      i32.const 1023
      i32.sub
      local.set $6
      i32.const 0
      local.set $3
      local.get $1
      local.get $5
      i32.const 1071644672
      i32.gt_s
      if
       local.get $2
       i32.const 1048576
       local.get $6
       i32.const 1
       i32.add
       i32.shr_s
       i32.add
       local.tee $5
       i32.const 2147483647
       i32.and
       i32.const 20
       i32.shr_u
       i32.const 1023
       i32.sub
       local.set $6
       i32.const 0
       local.get $5
       i32.const 1048575
       i32.and
       i32.const 1048576
       i32.or
       i32.const 20
       local.get $6
       i32.sub
       i32.shr_s
       local.tee $3
       i32.sub
       local.get $3
       local.get $2
       i32.const 0
       i32.lt_s
       select
       local.set $3
       local.get $0
       local.get $5
       i32.const 1048575
       local.get $6
       i32.shr_s
       i32.const -1
       i32.xor
       i32.and
       i64.extend_i32_s
       i64.const 32
       i64.shl
       f64.reinterpret_i64
       f64.sub
       local.set $0
      end
      local.get $0
      f64.add
      i64.reinterpret_f64
      i64.const -4294967296
      i64.and
      f64.reinterpret_i64
      local.tee $4
      f64.const 0.6931471824645996
      f64.mul
      local.tee $7
      local.get $1
      local.get $4
      local.get $0
      f64.sub
      f64.sub
      f64.const 0.6931471805599453
      f64.mul
      local.get $4
      f64.const -1.904654299957768e-09
      f64.mul
      f64.add
      local.tee $4
      f64.add
      local.tee $0
      local.get $0
      f64.mul
      local.set $1
      local.get $8
      f64.const 1
      local.get $0
      local.get $0
      local.get $1
      local.get $1
      local.get $1
      local.get $1
      local.get $1
      f64.const 4.1381367970572385e-08
      f64.mul
      f64.const -1.6533902205465252e-06
      f64.add
      f64.mul
      f64.const 6.613756321437934e-05
      f64.add
      f64.mul
      f64.const -2.7777777777015593e-03
      f64.add
      f64.mul
      f64.const 0.16666666666666602
      f64.add
      f64.mul
      f64.sub
      local.tee $1
      f64.mul
      local.get $1
      f64.const 2
      f64.sub
      f64.div
      local.get $4
      local.get $0
      local.get $7
      f64.sub
      f64.sub
      local.tee $1
      local.get $0
      local.get $1
      f64.mul
      f64.add
      f64.sub
      local.get $0
      f64.sub
      f64.sub
      local.tee $0
      i64.reinterpret_f64
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.get $3
      i32.const 20
      i32.shl
      i32.add
      local.tee $2
      i32.const 20
      i32.shr_s
      i32.const 0
      i32.le_s
      if (result f64)
       local.get $3
       local.tee $2
       i32.const 1023
       i32.gt_s
       if (result f64)
        local.get $0
        f64.const 8988465674311579538646525e283
        f64.mul
        local.set $0
        local.get $2
        i32.const 1023
        i32.sub
        local.tee $2
        i32.const 1023
        i32.gt_s
        if (result f64)
         local.get $2
         i32.const 1023
         i32.sub
         local.tee $2
         i32.const 1023
         local.get $2
         i32.const 1023
         i32.lt_s
         select
         local.set $2
         local.get $0
         f64.const 8988465674311579538646525e283
         f64.mul
        else
         local.get $0
        end
       else
        local.get $2
        i32.const -1022
        i32.lt_s
        if (result f64)
         local.get $0
         f64.const 2.004168360008973e-292
         f64.mul
         local.set $0
         local.get $2
         i32.const 969
         i32.add
         local.tee $2
         i32.const -1022
         i32.lt_s
         if (result f64)
          local.get $2
          i32.const 969
          i32.add
          local.tee $2
          i32.const -1022
          local.get $2
          i32.const -1022
          i32.gt_s
          select
          local.set $2
          local.get $0
          f64.const 2.004168360008973e-292
          f64.mul
         else
          local.get $0
         end
        else
         local.get $0
        end
       end
       local.get $2
       i64.extend_i32_s
       i64.const 1023
       i64.add
       i64.const 52
       i64.shl
       f64.reinterpret_i64
       f64.mul
      else
       local.get $0
       i64.reinterpret_f64
       i64.const 4294967295
       i64.and
       local.get $2
       i64.extend_i32_s
       i64.const 32
       i64.shl
       i64.or
       f64.reinterpret_i64
      end
      f64.mul
      return
     end
     local.get $0
     local.get $0
     f64.mul
     return
    end
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $8
   f64.const 1.e+300
   f64.mul
   f64.const 1.e+300
   f64.mul
   return
  end
  local.get $8
  f64.const 1e-300
  f64.mul
  f64.const 1e-300
  f64.mul
 )
 (func $assembly/index/action (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  f64.convert_i32_s
  local.get $1
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1120
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $invalid
     block $~lib/arraybuffer/ArrayBufferView
      local.get $0
      i32.const 12
      i32.add
      i32.load
      br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $~lib/arraybuffer/ArrayBufferView $invalid
     end
     local.get $0
     i32.load offset=20
     local.tee $1
     if
      local.get $1
      i32.const 1260
      i32.ge_u
      if
       local.get $1
       i32.const 20
       i32.sub
       call $~lib/rt/pure/decrement
      end
     end
     br $__inlined_func$~lib/rt/__visit_members
    end
    unreachable
   end
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1120
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
)
