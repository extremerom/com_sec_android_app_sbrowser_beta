.class public final Lorg/chromium/network/mojom/TrustedUrlRequestParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public acceptChFrameObserver:Lorg/chromium/network/mojom/AcceptChFrameObserver;

.field public allowCookiesFromBrowser:Z

.field public clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

.field public cookieObserver:Lorg/chromium/network/mojom/CookieAccessObserver;

.field public deviceBoundSessionObserver:Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;

.field public devtoolsObserver:Lorg/chromium/network/mojom/DevToolsObserver;

.field public disableSecureDns:Z

.field public hasUserActivation:Z

.field public includeRequestCookiesWithResponse:Z

.field public isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

.field public sharedDictionaryObserver:Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;

.field public trustTokenObserver:Lorg/chromium/network/mojom/TrustTokenAccessObserver;

.field public urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x58

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->includeRequestCookiesWithResponse:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/TrustedUrlRequestParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/TrustedUrlRequestParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/IsolationInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/IsolationInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->disableSecureDns:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->hasUserActivation:Z

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->allowCookiesFromBrowser:Z

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->includeRequestCookiesWithResponse:Z

    sget-object v0, Lorg/chromium/network/mojom/CookieAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x14

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/CookieAccessObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->cookieObserver:Lorg/chromium/network/mojom/CookieAccessObserver;

    sget-object v0, Lorg/chromium/network/mojom/TrustTokenAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x1c

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/TrustTokenAccessObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->trustTokenObserver:Lorg/chromium/network/mojom/TrustTokenAccessObserver;

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x24

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    sget-object v0, Lorg/chromium/network/mojom/DevToolsObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x2c

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/DevToolsObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->devtoolsObserver:Lorg/chromium/network/mojom/DevToolsObserver;

    sget-object v0, Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x34

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->deviceBoundSessionObserver:Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ClientSecurityState;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ClientSecurityState;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    sget-object v0, Lorg/chromium/network/mojom/AcceptChFrameObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x48

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/AcceptChFrameObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->acceptChFrameObserver:Lorg/chromium/network/mojom/AcceptChFrameObserver;

    sget-object v0, Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->sharedDictionaryObserver:Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->disableSecureDns:Z

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->hasUserActivation:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->allowCookiesFromBrowser:Z

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->includeRequestCookiesWithResponse:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->cookieObserver:Lorg/chromium/network/mojom/CookieAccessObserver;

    const/16 v1, 0x14

    sget-object v3, Lorg/chromium/network/mojom/CookieAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->trustTokenObserver:Lorg/chromium/network/mojom/TrustTokenAccessObserver;

    const/16 v1, 0x1c

    sget-object v3, Lorg/chromium/network/mojom/TrustTokenAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    const/16 v1, 0x24

    sget-object v3, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->devtoolsObserver:Lorg/chromium/network/mojom/DevToolsObserver;

    const/16 v1, 0x2c

    sget-object v3, Lorg/chromium/network/mojom/DevToolsObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->deviceBoundSessionObserver:Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;

    const/16 v1, 0x34

    sget-object v3, Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->acceptChFrameObserver:Lorg/chromium/network/mojom/AcceptChFrameObserver;

    const/16 v1, 0x48

    sget-object v3, Lorg/chromium/network/mojom/AcceptChFrameObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object p0, p0, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->sharedDictionaryObserver:Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;

    const/16 v0, 0x50

    sget-object v1, Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
