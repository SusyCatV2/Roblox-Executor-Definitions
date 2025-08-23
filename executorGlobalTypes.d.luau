type AnyFunc = (args: any) -> any
type FunctionDrawnObject = Instance

-- CSV --
declare csv: {
    parse: (csvString: string, delimiter: string?) -> {},
    stringify: (table: {}, delimiter: string) -> string,
    getField: (csvTable: {}, row: number, col: number) -> string,
    getRow: (csvTable: {}, row: number) -> {}
}

-- CLOSURES --
do
    declare function checkcaller(): boolean
    declare function clonefunction<T>(func: T): T
    declare function getcallingscript(): Instance
    declare function restorefunction(func: AnyFunc): ()
    declare function isfunctionhooked(func: AnyFunc): boolean
    declare function isnewcclosure(func: AnyFunc): boolean
    declare function get_wrapped_original(func: AnyFunc): AnyFunc
    declare function hookfunction<T>(func: T, hook: AnyFunc): T
    declare function iscclosure(func: AnyFunc): boolean
    declare function islclosure(func: AnyFunc): boolean
    declare function isexecutorclosure(func: AnyFunc): boolean
    declare function loadstring(source: string, chunkname: string?): (AnyFunc?, string?)
    declare function newcclosure<T>(func: T, debugname: string?): T
    declare function newlclosure<T>(func: T, debugname: string?): T
end

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

-- FILESYSTEM --
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

-- SCRIPT --
do
    declare function getgc(include_tables: boolean?): {}
    declare function filtergc(type_name: string, options: {}, return_one: boolean?): {} | Instance | nil
    declare function getgenv(): {}
    declare function getrenv(): {}
    declare function getscriptbytecode(script: Instance): string
    declare function dumpstring(script: Instance): string
    declare function getscriptclosure(script: Instance): AnyFunc | nil
    declare function getscriptfunction(script: Instance): AnyFunc | nil
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

-- STOPWATCH --
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
