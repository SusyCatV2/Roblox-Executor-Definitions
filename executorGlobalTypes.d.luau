-- CLOSURES --

-- FILESYSTEM --

-- HTTP --
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

declare function loadstring(code: string): (() -> ())

-- INPUT --
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

-- INSTANCE --
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

-- METATABLE --
declare function getrawmetatable(object: Instance): {}
declare function getnamecallmethod(): string
declare function setnamecallmethod(method: string): ()
declare function isreadonly(table: {}): boolean
declare function setrawmetatable(table: {}, metatable: {}): {}
declare function setreadonly(table: {}, readonly: boolean): ()

-- MISCELLANEOUS --

-- REGEX --

-- SCRIPT --
