use std::mem;

#[derive(Debug)]
pub enum Value<'arg> {
    I32(i32),
    F32(f32),
    ArrayOfI32(&'arg mut [i32]),
    ArrayOfF32(&'arg mut [f32]),
}

impl<'py> Value<'py> {
    pub fn get(&self) -> u64 {
        match self {
            Value::I32(i) => encode_i32(*i),
            Value::F32(f) => encode_f32(*f),
            _ => panic!("Unexpected type!"),
        }
    }

    pub fn get_mem(&self, addr: usize) -> u64 {
        match self {
            Value::ArrayOfI32(arr) => encode_i32(arr[addr]),
            Value::ArrayOfF32(arr) => encode_f32(arr[addr]),
            _ => panic!("Unexpected type!"),
        }
    }
    pub fn set_mem(&mut self, addr: usize, value: u64) {
        match self {
            Value::ArrayOfI32(arr) => arr[addr] = decode_to_i32(value),
            Value::ArrayOfF32(arr) => arr[addr] = decode_to_f32(value),
            _ => panic!("Unexpected type!"),
        }
    }
}

fn encode_i32(v: i32) -> u64 {
    unsafe { mem::transmute::<i64, u64>(v.into()) }
}

fn encode_f32(v: f32) -> u64 {
    u64::from(v.to_bits())
}

fn decode_to_i32(v: u64) -> i32 {
    unsafe { mem::transmute::<u32, i32>(v.try_into().unwrap()) }
}

fn decode_to_f32(v: u64) -> f32 {
    f32::from_bits(v.try_into().unwrap())
}
