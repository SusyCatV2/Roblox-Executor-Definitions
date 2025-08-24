declare math: typeof(math) & {
    -- CONSTANTS --
    tau: number,
    e: number,
    phi: number,

    -- Spatial Mathematics --
    vector_add: (v1: {}, v2: {}) -> {},
    vector_subtract: (v1: {}, v2: {}) -> {},
    vector_dot_product: (v1: {}, v2: {}) -> {},
    vector_cross_product: (v1: {}, v2: {}) -> {},
    vector_normalize: (v: {}) -> {},
    vector_magnitude: (v: {}) -> number,
    distance: (v1: Vector3, v2: Vector3) -> number,
    direction: (v1: Vector3, v2: Vector3) -> Vector3,
    cross2D: (v1: Vector2, v2: Vector2) -> number,
    angleBetween: (v1: Vector3, v2: Vector3) -> number,

    -- Angle / Trig helpers --
    deg2rad: (deg: number) -> number,
    rad2deg: (rad: number) -> number,
    clampAngle: (angle: number) -> number,
    lerpAngle: (a: number, b: number, t: number) -> number,

    -- Numeric Helpers --
    lerp: (a: number, b: number, t: number) -> number,
    invLerp: (a: number, b: number, v: number) -> number,
    remap: (value: number, fromMin: number, fromMax: number, toMin: number, toMax: number) -> number,
    round: (n: number, decimalPlaces: number) -> number,
    sign: (n: number) -> number,

    -- Other Functions --
    magnitude: (v: Vector3) -> number,
    dist: (p: {}, q: {}) -> number,
    nextafter: (x: number, y: number, steps: number) -> number,
    prod: (t: {}, start: number) -> number,
    sumprod: (p: {}, q: {}) -> number,
    remainder: (x: number, y: number) -> number,
    log1p: (x: number) -> number,
    log2: (x: number) -> number,
    isfinite: (x: number) -> boolean
}
