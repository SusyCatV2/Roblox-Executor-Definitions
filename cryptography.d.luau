type ByteString = string
type HashAlgo = "md5" | "sha1" | "sha256" | "sha512" | string

-- base64 aliases
declare function base64_encode(data: string): string
declare function base64_decode(data: string): string

-- crypt
declare crypt: {
    base64: {
        encode: (data: string) -> string,
        decode: (data: string) -> string,
    },

    hex: {
        encode: (data: string) -> string,
        decode: (hex_string: string) -> string,
    },

    derive: {
        key: (length: number, key: ByteString, sub_key_id: number, context: string) -> ByteString,
        id: (length: number, key: ByteString, id: string) -> ByteString,
        password: (length: number, password: string, salt: ByteString, iterations: number|string) -> ByteString,
    },

    rsa: {
        generate_key_pair: (bits: number) -> (string, string),
        encrypt: (plaintext: ByteString, public_key: string) -> ByteString,
        decrypt: (ciphertext: ByteString, private_key: string) -> ByteString,
        sign: (data: ByteString, private_key: string) -> ByteString,
        verify: (data: ByteString, signature: ByteString, public_key: string) -> boolean,
    },

    hash: (data: ByteString, algorithm: HashAlgo) -> ByteString,
    hmac: (key: ByteString, data: ByteString, algorithm: HashAlgo) -> ByteString,

    encrypt: (data: ByteString, key: ByteString, iv: ByteString?, mode: string?) -> (ByteString, ByteString),
    decrypt: (data: ByteString, key: ByteString, iv: ByteString, mode: string) -> ByteString,

    generatekey: (length: number?) -> ByteString,
    generatebytes: (count: number?) -> ByteString,

    wrap_key: (kek: ByteString, key: ByteString) -> ByteString,
    unwrap_key: (kek: ByteString, wrapped_key: ByteString) -> ByteString,

    -- Common Alliases
    base64encode: (data: string) -> string,
    base64decode:(data: string) -> string,
    hexencode: (data: string) -> string,
    hexdecode: (data: string) -> string,
}

