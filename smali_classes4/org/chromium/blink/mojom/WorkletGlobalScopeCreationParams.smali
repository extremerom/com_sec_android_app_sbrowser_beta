.class public final Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

.field public codeCacheHost:Lorg/chromium/blink/mojom/CodeCacheHost;

.field public devtoolsHost:Lorg/chromium/blink/mojom/WorkletDevToolsHost;

.field public devtoolsToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public originTrialFeatures:[I

.field public scriptUrl:Lorg/chromium/url/mojom/Url;

.field public starterOrigin:Lorg/chromium/url/internal/mojom/Origin;

.field public waitForDebugger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->scriptUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->starterOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->originTrialFeatures:[I

    const/16 v1, 0x18

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->devtoolsToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->devtoolsHost:Lorg/chromium/blink/mojom/WorkletDevToolsHost;

    const/16 v1, 0x28

    sget-object v3, Lorg/chromium/blink/mojom/WorkletDevToolsHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->codeCacheHost:Lorg/chromium/blink/mojom/CodeCacheHost;

    const/16 v1, 0x30

    sget-object v3, Lorg/chromium/blink/mojom/CodeCacheHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    const/16 v1, 0x38

    sget-object v3, Lorg/chromium/blink/mojom/BrowserInterfaceBroker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-boolean p0, p0, Lorg/chromium/blink/mojom/WorkletGlobalScopeCreationParams;->waitForDebugger:Z

    const/16 v0, 0x40

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
