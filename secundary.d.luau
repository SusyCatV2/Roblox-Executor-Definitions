type FunctionDrawnObject = Instance

-- ACTORS --

-- BIT --

-- CSV --
declare csv: {
    parse: (csvString: string, delimiter: string?) -> {},
    stringify: (table: {}, delimiter: string) -> string,
    getField: (csvTable: {}, row: number, col: number) -> string,
    getRow: (csvTable: {}, row: number) -> {}
}

-- CACHE --
do
    declare cache: {
        invalidate: (object: Instance) -> (),
        iscached: (object: Instance) -> boolean,
        replace: (object: Instance, newObject: Instance) -> (),
    }

    declare function cloneref(object: Instance): Instance
    declare function compareinstances(a: Instance, b: Instance): boolean
end

-- DEBUG --

-- DIRECTORY WATCHER --

-- DRAWING --
do
    declare Drawing: {
        new: (type: string,collect: boolean?) -> FunctionDrawnObject,
        clear: () -> ()
    }

    declare function getrenderproperty(object: FunctionDrawnObject, property: string): any
    declare function setrenderproperty(object: FunctionDrawnObject, property: string, value: any): ()
    declare function isrenderobj(object: any): boolean
    declare function cleardrawcache()
end

-- DRAWING IMMEDIATE --

-- DURATION --

-- FILES SYSTEM --
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

    declare Regex: {
        new: (pattern: string) -> RegexFunctions,
        Escape: (str: string) -> RegexFunctions
    }
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

    declare SecureTable: {
        new: (narray: number?, nhash: number?) -> SecureTableMethods
    }
end

-- STOP WATCH --
do
    type StopwatchFunctions = {
        Start: (self: StopwatchFunctions) -> (),
        Stop: (self: StopwatchFunctions) -> (),
        Reset: (self: StopwatchFunctions) -> (),
        ElapsedTime: (self: StopwatchFunctions) -> number,
    }

    declare Stopwatch: {
        new: () -> StopwatchFunctions
    }
end
