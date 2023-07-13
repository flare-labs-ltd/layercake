use ethers::middleware::contract::Abigen;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    Abigen::new("IERC20", "./out/IERC20.sol/IERC20.json")?
        .generate()?
        .write_to_file("./src/abigen-builder/ierc20/src/lib.rs")?;
    Abigen::new("LayerCake", "./out/LayerCake.sol/LayerCake.json")?
        .generate()?
        .write_to_file("./src/abigen-builder/layer_cake/src/lib.rs")?;
    Abigen::new(
        "LayerCakeBandwidthManager",
        "./out/LayerCakeBandwidthManager.sol/LayerCakeBandwidthManager.json",
    )?
    .generate()?
    .write_to_file("./src/abigen-builder/layer_cake_bandwidth_manager/src/lib.rs")?;
    Ok(())
}
