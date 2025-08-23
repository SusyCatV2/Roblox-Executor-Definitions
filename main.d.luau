type AnyFunc = (args: any) -> any

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

-- SCRIPTS --
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

-- WEBSOCKET --
do
    type WebSocketClientMethods = {
        Send: (self: WebSocketClientMethods, message: string) -> (),
        send: (self: WebSocketClientMethods, message: string) -> (),
        Close: () -> (),
        close: () -> (),
        OnMessage: RBXScriptSignal<() -> ()>,
        OnClose: RBXScriptSignal<() -> ()>,
    }

    declare WebSoket: {
        New: (url: string) -> WebSocketClientMethods,
        new: (url: string) -> WebSocketClientMethods,
        Connect: (url: string) -> WebSocketClientMethods,
        connect: (url: string) -> WebSocketClientMethods,
    }
end
