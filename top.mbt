test {
  // md5()
  inspect!(
    @mooncrypto.md5("Hello World"),
    content="b10a8db164e0754105b7a99be72e3fe5",
  )
  inspect!(
    @mooncrypto.sha1("Hello World"),
    content="0a4d55a8d778e5022fab701977c5d840bbc486d0",
  )
  inspect!(
    @mooncrypto.sha256("Hello World"),
    content="a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e",
  )
  inspect!(@mooncrypto.base64_encode("Hello World"), content="SGVsbG8gV29ybGQ=")
  inspect!(
    @mooncrypto.base64_decode("SGVsbG8gV29ybGQ=").unwrap(),
    content="Hello World",
  )
}
