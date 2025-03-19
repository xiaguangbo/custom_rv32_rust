extern crate core;
extern crate proc_macro;
extern crate proc_macro2;
extern crate quote;
extern crate syn;

use proc_macro::TokenStream;
use quote::quote;
use syn::{parse_macro_input, ItemFn};

#[proc_macro_attribute]
pub fn main(_args: TokenStream, input: TokenStream) -> TokenStream {
    let f = parse_macro_input!(input as ItemFn);

    let stmts = f.block.stmts;

    quote!(
        #[export_name = "main"]
        fn main() -> ! {
            #(#stmts)*
        }
    )
    .into()
}
