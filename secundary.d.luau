type AnyFunc = (args: any) -> any
type DebugInfo = string | number | AnyFunc
type FunctionDrawnObject = Instance
type ImmediateSignal = RBXScriptSignal
type DrawFont = string

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
    badd: (n1: number, n2: number, n3: number?) -> number,
    bsub: (n1: number, n2: number, n3: number?) -> number,
    bmul: (n1: number, n2: number, n3: number?) -> number,
    bdiv: (n1: number, n2: number, n3: number?) -> number,
    band: (n1: number, n2: number, n3: number?) -> number,
    bor: (n1: number, n2: number, n3: number?) -> number,
    bxor: (n1: number, n2: number, n3: number?) -> number,
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


-- DEBUG --
declare debug: typeof(debug) & {
    getconstant: (func: AnyFunc | number, index: number) -> any,
    getconstants: (func: AnyFunc | number) -> {any},
    getinfo: (func: AnyFunc | number) -> DebugInfo,
    setconstant: (func: AnyFunc | number, index: number, value: any) -> (),
    getproto: (func: AnyFunc | number, index: number, active: boolean?) -> AnyFunc,
    getprotos: (func: AnyFunc | number) -> {AnyFunc},
    getstack: (level: number, index: number?) -> any | {any},
    setstack: (level: number, index: number, value: any) -> (),
    getupvalue: (func: AnyFunc | number, index: number) -> any,
    getupvalues: (func: AnyFunc | number) -> {any},
    setupvalue: (func: AnyFunc | number, index: number, value: any) -> (),
    setname: (func: AnyFunc, name: string) -> (),
    isvalidlevel: (level: number) -> boolean,
    getregistry: () -> {},
}

-- DIRECTORY WATCHER --
do
    type DirectoryWatcherMethods = {
        start: (self: DirectoryWatcherMethods) -> (),
        stop: (self: DirectoryWatcherMethods) -> (),
        OnChanged: (self: DirectoryWatcherMethods, callback: AnyFunc) -> (),
        OnCreated: (self: DirectoryWatcherMethods, callback: AnyFunc) -> (),
        OnDeleted: (self: DirectoryWatcherMethods, callback: AnyFunc) -> (),
        OnRenamed: (self: DirectoryWatcherMethods, callback: AnyFunc) -> (),
        OnOverflow: (self: DirectoryWatcherMethods, callback: AnyFunc) -> (),
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
