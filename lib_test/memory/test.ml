module Backend = struct
  include Session.Memory
  let name = "memory"
end

let () = Mirage_crypto_rng_unix.initialize (module Mirage_crypto_rng.Fortuna)
module Test = Test_session.Make(Backend)
