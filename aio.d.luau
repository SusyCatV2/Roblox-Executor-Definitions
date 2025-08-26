type Function = (...any) -> any
type DebugInfo = string | number | Function
type FunctionDrawnObject = Instance
type ImmediateSignal = RBXScriptSignal
type DrawFont = string
type Byte = number
type ByteString = string
type HashAlgo = "md5" | "sha1" | "sha256" | "sha512" | string

-- CLOSURES --
do
    declare function checkcaller(): boolean
    declare function clonefunction<T>(func: T): T
    declare function getcallingscript(): Instance
    declare function restorefunction(func: Function): ()
    declare function isfunctionhooked(func: Function): boolean
    declare function isnewcclosure(func: Function): boolean
    declare function get_wrapped_original(func: Function): Function
    declare function hookfunction<T>(func: T, hook: Function): T
    declare function iscclosure(func: Function): boolean
    declare function islclosure(func: Function): boolean
    declare function isexecutorclosure(func: Function): boolean
    declare function loadstring(source: string, chunkname: string?): (Function?, string?)
    declare function newcclosure<T>(func: T, debugname: string?): T
    declare function newlclosure<T>(func: T, debugname: string?): T
end

-- HTTP --
do
    declare function httpget(url: string): string
    declare function httppost(url: string, data: string, content_type: string?): string
    declare function request(options: {Url: string, Method: string?, Headers: {}?, Body: string, Cookies: {}?}): {Success: boolean, StatusCode: number, StatusMessage: string, Headers: {}, Body: string}

    declare http: {
        request: (options: {
            Url: string,
            Method: string?,
            Headers: { [string]: string }?,
            Body: string,
            Cookies: { [string]: string }?,
        }) -> {
            Success: boolean,
            StatusCode: number,
            StatusMessage: string,
            Headers: { [string]: string },
            Body: string,
        },
    }
end

-- INPUT --
do
    declare function iswindowactive(): boolean
    declare function isrbxactive(): boolean
    declare function isgameactive(): boolean
    declare function keypress(keyCode: number): ()
    declare function keytap(keyCode: number): ()
    declare function keyrelease(keyCode: number): ()
    declare function mouse1click(): ()
    declare function mouse1press(): ()
    declare function mouse1release(): ()
    declare function mouse2click(): ()
    declare function mouse2press(): ()
    declare function mouse2release(): ()
    declare function mousemoveabs(x: number, y: number): ()
    declare function mousemoverel(dx: number, dy: number): ()
    declare function mousescroll(delta: number): ()
end

-- INSTANCE --
do
    declare function setfflag(flagName: string, value: any): boolean
    declare function isnetworkowner(instance: Instance): boolean
    declare function gethui(): Instance
    declare function firesignal(signal: RBXScriptSignal, args: any): ()
    declare function getproperties(instance: Instance, propertyType: number?): {}
    declare function gethiddenproperties(instance: Instance, propertyType: number?): {}
    declare function getinstancelist(): {}
    declare function setsimulationradius(radius: number): ()
    declare function getsimulationradius(): number
    declare function fireclickdetector(clickDetector: Instance, distance: number?): ()
    declare function firetouchinterest(part: Instance, touchingPart: Instance, isTouching: boolean): ()
    declare function fireproximityprompt(proximityPrompt: Instance): ()
    declare function getcallbackvalue(instance: Instance, property: string): any
    declare function getconnections(signal: RBXScriptSignal): {}
    declare function getconnection(signal: RBXScriptSignal, index: number): RBXScriptConnection
    declare function getcustomasset(filePath: string): string
    declare function isscriptable(instance: Instance, property: string): boolean
    declare function setscriptable(instance: Instance, property: string, scriptable: boolean): boolean
    declare function setrbxclipboard(content: string): ()
    declare function getrendersteppedlist(descriptive: boolean): {}
    declare function replicatesignal(signal: RBXScriptSignal, args: any?): ()
    declare function cansignalreplicate(signal: RBXScriptSignal): boolean
    declare function getpcd(instance: TriangleMeshPart): (string, string)
    declare function getunionassetid(instance: UnionOperation): string
    declare function getbspval(instance: Instance, property: string, boolean: string): string
    declare function hooksignal(signal: RBXScriptSignal, callback: Function): ()
    declare function isconnectionenabled(connection: RBXScriptConnection): boolean
    declare function issignalhooked(signal: RBXScriptSignal): boolean
    declare function unhooksignal(signal: RBXScriptSignal):()
end

-- METATABLE --
do
    declare function getrawmetatable(object: Instance): {}
    declare function getnamecallmethod(): string
    declare function setnamecallmethod(method: string): ()
    declare function isreadonly(table: {}): boolean
    declare function setrawmetatable(table: {}, metatable: {}): {}
    declare function setreadonly(table: {}, readonly: boolean): ()
end

-- SCRIPTS --
do
    declare function getgc(include_tables: boolean?): {}
    declare function filtergc(type_name: string, options: {}, return_one: boolean?): {} | Instance | nil
    declare function getgenv(): {}
    declare function getrenv(): {}
    declare function getscriptbytecode(script: Instance): string
    declare function dumpstring(script: Instance): string
    declare function getscriptclosure(script: Instance): Function | nil
    declare function getscriptfunction(script: Instance): Function | nil
    declare function getscripthash(script: Instance): string | nil
    declare function gettenv(thread: thread): {}
    declare function getscriptfromthread(thread: thread): Instance | nil
    declare function getthreadidentity(thread: thread?): number
    declare function getidentity(): number
    declare function getthreadcontext(thread: thread?): number
    declare function setthreadidentity(identity: number): ()
    declare function setidentity(identity: number): ()
    declare function setthreadcontext(identity: number): number
    declare function getallthreads(): {}
    declare function getsenv(script: Instance): {}
    declare function decompile(script: Instance): string
end

-- WEBSOCKET --
do
    type WebSocketClientMethods = {
        Send: (self: WebSocketClientMethods, message: string) -> (),
        send: (self: WebSocketClientMethods, message: string) -> (),
        Close: () -> (),
        close: () -> (),
        OnMessage: RBXScriptSignal<(string) -> ()>,
        OnClose: RBXScriptSignal<() -> ()>,
    }

    declare class WebSocket
        New: (url: string) -> WebSocketClientMethods
        new: (url: string) -> WebSocketClientMethods
        Connect: (url: string) -> WebSocketClientMethods
        connect: (url: string) -> WebSocketClientMethods
    end
    declare WebSoket: WebSocket
end

-- ACTORS --
do
    declare function getactors(): {}
    declare function run_on_actor(actor: Actor?, script: string, channel_data: any): ()
    declare function create_comm_channel(): (number, BindableEvent)
    declare function isparallel(): boolean
    declare function getactorthreads(): {}
    declare function run_on_thread(actor_thread: thread, string: string, channel_data: any) : ()
end

-- BIT --
declare bit: {
    badd: (...number) -> number,
    bsub: (...number) -> number,
    bmul: (...number) -> number,
    bdiv: (...number) -> number,
    band: (...number) -> number,
    bor: (...number) -> number,
    bxor: (...number) -> number,
    bnot: (number: number) -> number,
    lshift: (value: number, shift: number) -> number,
    rshift: (value: number, shift: number) -> number,
    arshift: (value: number, shift: number) -> number,
    rol: (value: number, shift: number) -> number,
    ror: (value: number, shift: number) -> number,
    bpopcount: (value: number) -> number,
    bswap: (value: number) -> number,
    tohex: (value: number, nibbles: number?) -> string,
    tobit: (value: number) -> number,
}

-- CSV --
declare csv: {
    parse: (csvString: string, delimiter: string?) -> {},
    stringify: (table: {}, delimiter: string) -> string,
    getField: (csvTable: {}, row: number, col: number) -> string,
    getRow: (csvTable: {}, row: number) -> {}
}

-- CACHE --
declare cache: {
    invalidate: (object: Instance) -> (),
    iscached: (object: Instance) -> boolean,
    replace: (object: Instance, newObject: Instance) -> (),
}

-- CONSOLE --
do
    declare function rconsoleclear(): ()
    declare function rconsoleclose(): ()
    declare function rconsoleerr(text: string): ()
    declare function rconsoleinfo(text: string): ()
    declare function rconsoleinput(): string
    declare function rconsolename(title: string): ()
    declare function rconsoleprint(text: string): ()
    declare function printconsole(message: string, red: Byte, green: Byte, blue: Byte)
end

-- DEBUG --
declare debug: typeof(debug) & {
    getconstant: (func: Function | number, index: number) -> any,
    getconstants: (func: Function | number) -> {any},
    getinfo: (func: Function | number) -> DebugInfo,
    setconstant: (func: Function | number, index: number, value: any) -> (),
    getproto: (func: Function | number, index: number, active: boolean?) -> Function,
    getprotos: (func: Function | number) -> {Function},
    getstack: (level: number, index: number?) -> any | {any},
    setstack: (level: number, index: number, value: any) -> (),
    getupvalue: (func: Function | number, index: number) -> any,
    getupvalues: (func: Function | number) -> {any},
    setupvalue: (func: Function | number, index: number, value: any) -> (),
    setname: (func: Function, name: string) -> (),
    isvalidlevel: (level: number) -> boolean,
    getregistry: () -> {},
}

-- DIRECTORY WATCHER --
do
    type DirectoryWatcherMethods = {
        start: (self: DirectoryWatcherMethods) -> (),
        stop: (self: DirectoryWatcherMethods) -> (),
        OnChanged: (self: DirectoryWatcherMethods, callback: Function) -> (),
        OnCreated: (self: DirectoryWatcherMethods, callback: Function) -> (),
        OnDeleted: (self: DirectoryWatcherMethods, callback: Function) -> (),
        OnRenamed: (self: DirectoryWatcherMethods, callback: Function) -> (),
        OnOverflow: (self: DirectoryWatcherMethods, callback: Function) -> (),
        GetPath: (self: DirectoryWatcherMethods) -> string,
        IsRecursive: (self: DirectoryWatcherMethods) -> boolean,
    }

    declare class DirectoryWatcher
        new: (path: string, recursive: boolean) -> DirectoryWatcherMethods
    end
    declare DirectoryWatcher: DirectoryWatcher
end

-- DRAWING --
do
    declare class Drawing 
        new: (type: string,collect: boolean?) -> FunctionDrawnObject
        clear: () -> ()
    end
    declare Drawing: Drawing

    declare function getrenderproperty(object: FunctionDrawnObject, property: string): any
    declare function setrenderproperty(object: FunctionDrawnObject, property: string, value: any): ()
    declare function isrenderobj(object: any): boolean
    declare function cleardrawcache()
end

-- DRAWING IMMEDIATE --
do
    declare class DrawingImmediate
        Clear: () -> ()
        GetPaint: (ZIndex: number) -> ()
        New: (ZIndex: number) -> ImmediateSignal
    end
    declare DrawingImmediate: DrawingImmediate

    declare Context: {
        Circle: (center: Vector2, radius: number, color: Color3, opacity: number, num_sides: number, thickness: number) -> (),
        FilledCircle: (center: Vector2, radius: number, color: Color3, num_sides: number, opacity: number) -> (),
        Line: (p1: Vector2, p2: Vector2, color: Color3, opacity: number, thickness: number) -> (),
        Triangle: (p1: Vector2, p2: Vector2, p3: Vector3, color: Color3, opacity: number, thickness: number) -> (),
        FilledTriangle: (p1: Vector2, p2: Vector2, p3: Vector3, color: Color3, opacity: number) -> (),
        Rectangle: (pos: Vector2, size: Vector2, color: Color3, opacity: number, rounding: number, thickness: number) -> (),
        FilledRectangle: (pos: Vector2, size: Vector2, color: Color3, opacity: number, rounding: number) -> (),
        Quad: (p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, color: Color3, opacity: number, thickness: number) -> (),
        FilledQuad: (p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, color: Color3, opacity: number, thickness: number) -> (),
        Text: (position: Vector2, font: DrawFont, font_size: number, color: Color3, opacity: number, text: string, center: boolean) -> (),
        OutlinedText: (position: Vector2, font: DrawFont, font_size: number, color: Color3, opacity: number, outline_color: Color3, outline_opacity: number, text: string, center: boolean) -> ()
    }

    declare function clearimmediatecache(): ()
end

-- DURATION --
do
    type DurationObjectMethods = {
        Nanoseconds: (self: DurationObjectMethods) -> number,
        Microseconds: (self: DurationObjectMethods) -> number,
        Milliseconds: (self: DurationObjectMethods) -> number,
        Seconds: (self: DurationObjectMethods) -> number,
        Minutes: (self: DurationObjectMethods) -> number,
        Hours: (self: DurationObjectMethods) -> number,
        Days: (self: DurationObjectMethods) -> number,
        Months: (self: DurationObjectMethods) -> number,
        Years: (self: DurationObjectMethods) -> number,
    }

    declare class Duration 
        new: () -> DurationObjectMethods
        TimeSinceEpoch: () -> DurationObjectMethods
        FromNanoseconds: (nanoseconds: number) -> DurationObjectMethods
        FromMicroseconds: (microseconds: number) -> DurationObjectMethods
        FromMilliseconds: (milliseconds: number) -> DurationObjectMethods
        FromSeconds: (seconds: number) -> DurationObjectMethods
        FromMinutes: (minutes: number) -> DurationObjectMethods
        FromHours: (hours: number) -> DurationObjectMethods
        FromDays: (days: number) -> DurationObjectMethods
        FromMonths: (months: number) -> DurationObjectMethods
        FromYears: (years: number) -> DurationObjectMethods
    end
    declare Duration: Duration
end

-- FILE SYSTEM --
do
    declare function appendfile(path: string, data: string): ()
    declare function readfile(path: string): string
    declare function listfiles(path: string): {}
    declare function writefile(path: string, data: string): ()
    declare function makefolder(path: string): ()
    declare function isfile(path: string): boolean
    declare function isfolder(path: string): boolean
    declare function delfile(path: string): ()
    declare function delfolder(path: string): ()
end

-- ImGui --
do
    type TabItemMethods = {
        Button: (params: {}) -> any,
        InputItem: (params: {}) -> string,
        CheckBox: (params: {}) -> boolean,
        Slider: (params: {}) -> number,
        ComboBox: (params: {}) -> any,
        ListBox: (params: {}) -> any,
        ColorPicker: (params: {}) -> Color3,
        EndTabItem: () -> (),
    }

    type ImGuiMethods = {
        Text: (params: {}) -> (),
        TabBar: (params: {}) -> (),
        TabItem: (params: {}) -> TabItemMethods,
        EndTabBar: () -> (),
        End: () -> ()
    } 

    declare class ImGui
        new: (params: {}) -> ImGuiMethods
    end

    declare ImGui: ImGui
end

-- MISCELLANEOUS --
do
    declare function identifyexecutor(): (string, string)
    declare function lz4compress(data: string): string
    declare function lz4decompress(data: string, originalSize: number): string
    declare function messagebox(text: string, caption: string, type: number): number
    declare function messageboxasync(text: string, caption: string, type: number): number
    declare function executescript(script: string): ()
    declare function queue_on_teleport(script: Instance): ()
    declare function setclipboard(text: string): ()
    declare function setfpscap(fps: number): ()
    declare function getfpscap(): number
    declare function getreg(): {}
    declare function cloneref(object: Instance): Instance
    declare function compareinstances(obj1: Instance, obj2: Instance): boolean
    declare function getobjects(assetId: string): {}
    declare function newtable(narray: number, nhash: number): {}
    declare function saveinstance(object: Instance, filename: string, options: {})
end

-- REGEX --
do
    type RegexFunctions = {
        Status: (self: RegexFunctions) -> (),
        Match: (self: RegexFunctions, str: string) -> (),
        Replace: (self: RegexFunctions, str: string, replacement: string) -> (),
    }

    declare class Regex
        new: (pattern: string) -> RegexFunctions
        Escape: (str: string) -> ()
    end
    declare Regex: Regex
end

-- SECURE TABLE --
do
    type SecureTableMethods = {
        Set: (self: SecureTableMethods, key: number | string, value: any) -> (),
        Get: (self: SecureTableMethods, key: number | string) -> any | nil,
        Clear: (self: SecureTableMethods) -> (),
        Size: (self: SecureTableMethods) -> number,
        Lock: (self: SecureTableMethods) -> (),
        Unlock: (self: SecureTableMethods) -> (),
        Protect: (self: SecureTableMethods, size: number) -> (),
        Verify: (self: SecureTableMethods) -> (boolean, string),
        Wipe: (self: SecureTableMethods) -> (),
        Stats: (self: SecureTableMethods) -> {},
    }

    declare class SecureTable
        new: (narray: number?, nhash: number?) -> SecureTableMethods
    end
    declare SecureTable: SecureTable
end

-- STOP WATCH --
do
    type StopwatchFunctions = {
        Start: (self: StopwatchFunctions) -> (),
        Stop: (self: StopwatchFunctions) -> (),
        Reset: (self: StopwatchFunctions) -> (),
        ElapsedTime: (self: StopwatchFunctions) -> number,
    }

    declare class Stopwatch
        new: () -> StopwatchFunctions
    end
    declare Stopwatch: Stopwatch
end

-- LURAPH --
do
    declare LPH_OBFUSCATED : boolean
    declare LPH_LINE : number
    declare function LPH_JIT(func : any) : ()
    declare function LPH_JIT_MAX(func : any) : ()
    declare function LPH_NO_VIRTUALIZE(func : any) : ()
    declare function LPH_NO_UPVALUES(func : any) : ()
    declare function LPH_CRASH() : ()
end

-- LUARMOR --
do
    declare script_key : string
    declare LRM_LinkedDiscordID: number
    declare LRM_UserNote : string
    declare LRM_ScriptName : string
    declare LRM_TotalExecutions : number
    declare LRM_IsUserPremium : boolean
    declare LRM_SecondsLeft : number
    declare LRM_ScriptVersion : string
    declare function LRM_INIT(code : any) : ()
end

-- CRYPT ALIASES --
declare function base64_encode(data: string): string
declare function base64_decode(data: string): string

-- CRYPT --
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
        key: (length: number, key: ByteString, sub_key_id: number, context: string) -> string | ByteString,
        id: (length: number, key: ByteString, id: string) -> string | ByteString,
        password: (length: number, password: string, salt: ByteString, iterations: number|string) -> string | ByteString,
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

-- MATH --
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
