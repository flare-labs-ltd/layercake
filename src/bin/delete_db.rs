use diesel::prelude::*;
use layercake_rs::*;

fn main() {
    use self::schema::bandwidthproviders::dsl::*;
    use self::schema::executestandardoperations::dsl::*;
    use self::schema::latestblocknumber::dsl::*;
    use self::schema::storestandardoperations::dsl::*;

    let connection: &mut PgConnection = &mut establish_connection();
    let num_deleted = diesel::delete(latestblocknumber)
        .execute(connection)
        .expect("Error deleting entry");
    println!("Deleted {} latest blocknumber entries", num_deleted);

    let num_deleted = diesel::delete(bandwidthproviders)
        .execute(connection)
        .expect("Error deleting entry");
    println!("Deleted {} bandwidth providers", num_deleted);

    let num_deleted = diesel::delete(executestandardoperations)
        .execute(connection)
        .expect("Error deleting entry");
    println!("Deleted {} executeStandardOperations entries", num_deleted);

    let num_deleted = diesel::delete(storestandardoperations)
        .execute(connection)
        .expect("Error deleting entry");
    println!("Deleted {} storeStandardOperations entries", num_deleted);
}
