(module
  (type $t0 (func (result i32)))
  (type $t1 (func (param i32)))
  (type $t2 (func (param i32) (result i32)))
  (type $t3 (func))
  (type $t4 (func (param i32 i32) (result i32)))
  (type $t5 (func (param i32 i32 i32) (result i32)))
  (type $t6 (func (param i32 i64 i32) (result i64)))
  (func $__wasm_call_ctors (export "__wasm_call_ctors") (type $t3)
    (call $emscripten_stack_init))
  (func $my_factorial
        (export "my_factorial")
        (param $n i32)
        (result i32)
    (if (result i32) (i32.eq (local.get $n) (i32.const 0))
      (i32.const 1)
      (i32.mul
        (local.get $n)
        (call $my_factorial
          (i32.sub
            (local.get $n)
            (i32.const 1))))))
  (func $factorial (export "factorial") (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32)
    (local.set $l1
      (global.get $g0))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (global.set $g0
      (local.get $l3))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.load offset=8
        (local.get $l3)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $l4))
        (local.set $l5
          (i32.const 1))
        (i32.store offset=12
          (local.get $l3)
          (local.get $l5))
        (br $B0))
      (local.set $l6
        (i32.load offset=8
          (local.get $l3)))
      (local.set $l7
        (i32.load offset=8
          (local.get $l3)))
      (local.set $l8
        (i32.const 1))
      (local.set $l9
        (i32.sub
          (local.get $l7)
          (local.get $l8)))
      (local.set $l10
        (call $factorial
          (local.get $l9)))
      (local.set $l11
        (i32.mul
          (local.get $l6)
          (local.get $l10)))
      (i32.store offset=12
        (local.get $l3)
        (local.get $l11)))
    (local.set $l12
      (i32.load offset=12
        (local.get $l3)))
    (local.set $l13
      (i32.const 16))
    (local.set $l14
      (i32.add
        (local.get $l3)
        (local.get $l13)))
    (global.set $g0
      (local.get $l14))
    (return
      (local.get $l12)))
  (func $f2 (type $t0) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (local.set $l0
      (global.get $g0))
    (local.set $l1
      (i32.const 16))
    (local.set $l2
      (i32.sub
        (local.get $l0)
        (local.get $l1)))
    (local.set $l3
      (i32.const 0))
    (i32.store offset=12
      (local.get $l2)
      (local.get $l3))
    (local.set $l4
      (i32.const 0))
    (return
      (local.get $l4)))
  (func $main (export "main") (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (local.set $l2
      (call $f2))
    (return
      (local.get $l2)))
  (func $emscripten_stack_init (export "emscripten_stack_init") (type $t3)
    (global.set $g2
      (i32.const 65536))
    (global.set $g1
      (i32.and
        (i32.add
          (i32.const 0)
          (i32.const 15))
        (i32.const -16))))
  (func $emscripten_stack_get_free (export "emscripten_stack_get_free") (type $t0) (result i32)
    (i32.sub
      (global.get $g0)
      (global.get $g1)))
  (func $emscripten_stack_get_base (export "emscripten_stack_get_base") (type $t0) (result i32)
    (global.get $g2))
  (func $emscripten_stack_get_end (export "emscripten_stack_get_end") (type $t0) (result i32)
    (global.get $g1))
  (func $__errno_location (export "__errno_location") (type $t0) (result i32)
    (i32.const 65536))
  (func $stackSave (export "stackSave") (type $t0) (result i32)
    (global.get $g0))
  (func $stackRestore (export "stackRestore") (type $t1) (param $p0 i32)
    (global.set $g0
      (local.get $p0)))
  (func $stackAlloc (export "stackAlloc") (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.and
          (i32.sub
            (global.get $g0)
            (local.get $p0))
          (i32.const -16))))
    (local.get $l1))
  (func $emscripten_stack_get_current (export "emscripten_stack_get_current") (type $t0) (result i32)
    (global.get $g0))
  (func $f13 (type $t1) (param $p0 i32)
    (global.set $g3
      (local.get $p0)))
  (func $f14 (type $t0) (result i32)
    (global.get $g3))
  (func $f15 (type $t1) (param $p0 i32))
  (func $f16 (type $t1) (param $p0 i32))
  (func $f17 (type $t0) (result i32)
    (call $f15
      (i32.const 65540))
    (i32.const 65544))
  (func $f18 (type $t3)
    (call $f16
      (i32.const 65540)))
  (func $f19 (type $t2) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $f20 (type $t1) (param $p0 i32))
  (func $fflush (export "fflush") (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (local.set $l1
        (i32.const 0))
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.load offset=65548
              (i32.const 0))))
        (local.set $l1
          (call $fflush
            (i32.load offset=65548
              (i32.const 0)))))
      (block $B2
        (br_if $B2
          (i32.eqz
            (i32.load offset=65548
              (i32.const 0))))
        (local.set $l1
          (i32.or
            (call $fflush
              (i32.load offset=65548
                (i32.const 0)))
            (local.get $l1))))
      (block $B3
        (br_if $B3
          (i32.eqz
            (local.tee $p0
              (i32.load
                (call $f17)))))
        (loop $L4
          (local.set $l2
            (i32.const 0))
          (block $B5
            (br_if $B5
              (i32.lt_s
                (i32.load offset=76
                  (local.get $p0))
                (i32.const 0)))
            (local.set $l2
              (call $f19
                (local.get $p0))))
          (block $B6
            (br_if $B6
              (i32.eq
                (i32.load offset=20
                  (local.get $p0))
                (i32.load offset=28
                  (local.get $p0))))
            (local.set $l1
              (i32.or
                (call $fflush
                  (local.get $p0))
                (local.get $l1))))
          (block $B7
            (br_if $B7
              (i32.eqz
                (local.get $l2)))
            (call $f20
              (local.get $p0)))
          (br_if $L4
            (local.tee $p0
              (i32.load offset=56
                (local.get $p0))))))
      (call $f18)
      (return
        (local.get $l1)))
    (local.set $l2
      (i32.const 0))
    (block $B8
      (br_if $B8
        (i32.lt_s
          (i32.load offset=76
            (local.get $p0))
          (i32.const 0)))
      (local.set $l2
        (call $f19
          (local.get $p0))))
    (block $B9
      (block $B10
        (block $B11
          (br_if $B11
            (i32.eq
              (i32.load offset=20
                (local.get $p0))
              (i32.load offset=28
                (local.get $p0))))
          (drop
            (call_indirect $__indirect_function_table (type $t5)
              (local.get $p0)
              (i32.const 0)
              (i32.const 0)
              (i32.load offset=36
                (local.get $p0))))
          (br_if $B11
            (i32.load offset=20
              (local.get $p0)))
          (local.set $l1
            (i32.const -1))
          (br_if $B10
            (local.get $l2))
          (br $B9))
        (block $B12
          (br_if $B12
            (i32.eq
              (local.tee $l1
                (i32.load offset=4
                  (local.get $p0)))
              (local.tee $l3
                (i32.load offset=8
                  (local.get $p0)))))
          (drop
            (call_indirect $__indirect_function_table (type $t6)
              (local.get $p0)
              (i64.extend_i32_s
                (i32.sub
                  (local.get $l1)
                  (local.get $l3)))
              (i32.const 1)
              (i32.load offset=40
                (local.get $p0)))))
        (local.set $l1
          (i32.const 0))
        (i32.store offset=28
          (local.get $p0)
          (i32.const 0))
        (i64.store offset=16
          (local.get $p0)
          (i64.const 0))
        (i64.store offset=4 align=4
          (local.get $p0)
          (i64.const 0))
        (br_if $B9
          (i32.eqz
            (local.get $l2))))
      (call $f20
        (local.get $p0)))
    (local.get $l1))
  (table $__indirect_function_table (export "__indirect_function_table") 1 1 funcref)
  (memory $memory (export "memory") 256 256)
  (global $g0 (mut i32) (i32.const 65536))
  (global $g1 (mut i32) (i32.const 0))
  (global $g2 (mut i32) (i32.const 0))
  (global $g3 (mut i32) (i32.const 0)))
