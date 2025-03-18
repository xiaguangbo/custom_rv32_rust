use std::path::PathBuf;
use std::{env, fs};

fn main() {
    let out_dir = PathBuf::from(env::var("OUT_DIR").unwrap());

    fs::write(out_dir.join("link.ld"), include_bytes!("link.ld")).unwrap();
    println!("cargo:rustc-link-search={}", out_dir.display());
}
