#[macro_use] extern crate rocket;

#[get("/")]
fn index() -> &'static str {
    "Hello, I'm the first version of GummyJet!"
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![index])
}