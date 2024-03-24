use crate::value::Value;
use std::marker::PhantomData;

#[repr(C)]
pub union CArg<'arg> {
    pub int32: i32,
    pub float32: f32,
    pub array_of_i32: *mut i32,
    pub array_of_f32: *mut f32,
    phantom: PhantomData<&'arg i32>,
}

impl<'arg> CArg<'arg> {
    pub fn new(arg: &'arg mut Value) -> CArg<'arg> {
        match arg {
            Value::I32(v) => CArg { int32: *v },
            Value::F32(v) => CArg { float32: *v },
            Value::ArrayOfI32(v) => CArg {
                array_of_i32: v.as_mut_ptr(),
            },
            Value::ArrayOfF32(v) => CArg {
                array_of_f32: v.as_mut_ptr(),
            },
        }
    }
}
