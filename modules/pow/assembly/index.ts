// The entry file of your WebAssembly module.

export function action(a: i32, b: i32): f64 {
  return Math.pow(a, b);
}
