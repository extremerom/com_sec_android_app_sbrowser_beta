.class public final Lorg/chromium/network/mojom/UrlLoaderFactoryParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public automaticallyAssignIsolationInfo:Z

.field public clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

.field public coepReporter:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;

.field public cookieObserver:Lorg/chromium/network/mojom/CookieAccessObserver;

.field public cookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

.field public debugTag:Ljava/lang/String;

.field public deviceBoundSessionObserver:Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;

.field public devtoolsCookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

.field public devtoolsObserver:Lorg/chromium/network/mojom/DevToolsObserver;

.field public dipReporter:Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;

.field public disableSecureDns:Z

.field public disableWebSecurity:Z

.field public factoryOverride:Lorg/chromium/network/mojom/UrlLoaderFactoryOverride;

.field public headerClient:Lorg/chromium/network/mojom/TrustedUrlLoaderHeaderClient;

.field public ignoreIsolatedWorldOrigin:Z

.field public isOrbEnabled:Z

.field public isTrusted:Z

.field public isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

.field public processId:I

.field public requestInitiatorOriginLock:Lorg/chromium/url/internal/mojom/Origin;

.field public requireCrossSiteRequestForCookies:Z

.field public sharedDictionaryObserver:Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;

.field public topFrameId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public trustTokenIssuancePolicy:I

.field public trustTokenObserver:Lorg/chromium/network/mojom/TrustTokenAccessObserver;

.field public trustTokenRedemptionPolicy:I

.field public unsafeNonWebbyInitiator:Z

.field public urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa0

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->processId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->isOrbEnabled:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->ignoreIsolatedWorldOrigin:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->unsafeNonWebbyInitiator:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->disableWebSecurity:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->disableSecureDns:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->isTrusted:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->automaticallyAssignIsolationInfo:Z

    iput p1, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenIssuancePolicy:I

    iput p1, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenRedemptionPolicy:I

    const-string p1, ""

    iput-object p1, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->debugTag:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->requireCrossSiteRequestForCookies:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlLoaderFactoryParams;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->processId:I

    const/4 v0, 0x0

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->isOrbEnabled:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->ignoreIsolatedWorldOrigin:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->unsafeNonWebbyInitiator:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->disableWebSecurity:Z

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->disableSecureDns:Z

    const/4 v4, 0x5

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->isTrusted:Z

    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->automaticallyAssignIsolationInfo:Z

    const/4 v4, 0x7

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->requireCrossSiteRequestForCookies:Z

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->requestInitiatorOriginLock:Lorg/chromium/url/internal/mojom/Origin;

    sget-object v2, Lorg/chromium/network/mojom/TrustedUrlLoaderHeaderClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/TrustedUrlLoaderHeaderClient;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->headerClient:Lorg/chromium/network/mojom/TrustedUrlLoaderHeaderClient;

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/IsolationInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/IsolationInfo;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    const/16 v2, 0x28

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->topFrameId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v2, 0x30

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/UrlLoaderFactoryOverride;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlLoaderFactoryOverride;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->factoryOverride:Lorg/chromium/network/mojom/UrlLoaderFactoryOverride;

    const/16 v2, 0x38

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/ClientSecurityState;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ClientSecurityState;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    sget-object v2, Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x40

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->coepReporter:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;

    sget-object v2, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x48

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->dipReporter:Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;

    sget-object v2, Lorg/chromium/network/mojom/CookieAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x50

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CookieAccessObserver;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->cookieObserver:Lorg/chromium/network/mojom/CookieAccessObserver;

    sget-object v2, Lorg/chromium/network/mojom/TrustTokenAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x58

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/TrustTokenAccessObserver;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenObserver:Lorg/chromium/network/mojom/TrustTokenAccessObserver;

    sget-object v2, Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x60

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->sharedDictionaryObserver:Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;

    sget-object v2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x68

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    sget-object v2, Lorg/chromium/network/mojom/DevToolsObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x70

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/DevToolsObserver;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->devtoolsObserver:Lorg/chromium/network/mojom/DevToolsObserver;

    sget-object v2, Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x78

    invoke-virtual {p0, v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->deviceBoundSessionObserver:Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;

    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenIssuancePolicy:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenOperationPolicyVerdict;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenIssuancePolicy:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenOperationPolicyVerdict;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenIssuancePolicy:I

    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenRedemptionPolicy:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenOperationPolicyVerdict;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenRedemptionPolicy:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenOperationPolicyVerdict;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenRedemptionPolicy:I

    const/16 v2, 0x88

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->debugTag:Ljava/lang/String;

    const/16 v2, 0x90

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/CookieSettingOverrides;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookieSettingOverrides;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->cookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

    const/16 v2, 0x98

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieSettingOverrides;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookieSettingOverrides;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->devtoolsCookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;
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
    .locals 5

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->processId:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->isOrbEnabled:Z

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->ignoreIsolatedWorldOrigin:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->unsafeNonWebbyInitiator:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->disableWebSecurity:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->disableSecureDns:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->isTrusted:Z

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->automaticallyAssignIsolationInfo:Z

    const/4 v4, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->requireCrossSiteRequestForCookies:Z

    const/4 v4, 0x7

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->requestInitiatorOriginLock:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->headerClient:Lorg/chromium/network/mojom/TrustedUrlLoaderHeaderClient;

    const/16 v1, 0x18

    sget-object v4, Lorg/chromium/network/mojom/TrustedUrlLoaderHeaderClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->topFrameId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->factoryOverride:Lorg/chromium/network/mojom/UrlLoaderFactoryOverride;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->coepReporter:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;

    const/16 v1, 0x40

    sget-object v4, Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->dipReporter:Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;

    const/16 v1, 0x48

    sget-object v4, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->cookieObserver:Lorg/chromium/network/mojom/CookieAccessObserver;

    const/16 v1, 0x50

    sget-object v4, Lorg/chromium/network/mojom/CookieAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenObserver:Lorg/chromium/network/mojom/TrustTokenAccessObserver;

    const/16 v1, 0x58

    sget-object v4, Lorg/chromium/network/mojom/TrustTokenAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->sharedDictionaryObserver:Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;

    const/16 v1, 0x60

    sget-object v4, Lorg/chromium/network/mojom/SharedDictionaryAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    const/16 v1, 0x68

    sget-object v4, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->devtoolsObserver:Lorg/chromium/network/mojom/DevToolsObserver;

    const/16 v1, 0x70

    sget-object v4, Lorg/chromium/network/mojom/DevToolsObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->deviceBoundSessionObserver:Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;

    const/16 v1, 0x78

    sget-object v4, Lorg/chromium/network/mojom/DeviceBoundSessionAccessObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenIssuancePolicy:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->trustTokenRedemptionPolicy:I

    const/16 v1, 0x84

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->debugTag:Ljava/lang/String;

    const/16 v1, 0x88

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->cookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

    const/16 v1, 0x90

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/UrlLoaderFactoryParams;->devtoolsCookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

    const/16 v0, 0x98

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
