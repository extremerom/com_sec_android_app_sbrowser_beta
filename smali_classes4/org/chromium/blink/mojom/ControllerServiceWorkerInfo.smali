.class public final Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public clientId:Ljava/lang/String;

.field public fetchHandlerBypassOption:I

.field public fetchHandlerType:I

.field public fetchRequestWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public mode:I

.field public needRouterEvaluate:Z

.field public objectInfo:Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

.field public remoteController:Lorg/chromium/blink/mojom/ControllerServiceWorker;

.field public routerData:Lorg/chromium/blink/mojom/ServiceWorkerRouterData;

.field public sha256ScriptChecksum:Ljava/lang/String;

.field public usedFeatures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->mode:I

    iput p1, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerType:I

    iput p1, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerBypassOption:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->mode:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ControllerServiceWorkerMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->mode:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ControllerServiceWorkerMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->mode:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerFetchHandlerType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerFetchHandlerType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerType:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerBypassOption:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerFetchHandlerBypassOption;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerBypassOption:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerFetchHandlerBypassOption;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerBypassOption:I

    const/16 v0, 0x14

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->needRouterEvaluate:Z

    const/16 v0, 0x18

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->sha256ScriptChecksum:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRouterData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerRouterData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->routerData:Lorg/chromium/blink/mojom/ServiceWorkerRouterData;

    sget-object v0, Lorg/chromium/blink/mojom/ControllerServiceWorker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x28

    invoke-virtual {p0, v4, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/ControllerServiceWorker;

    iput-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->remoteController:Lorg/chromium/blink/mojom/ControllerServiceWorker;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->clientId:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchRequestWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->objectInfo:Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

    const/16 v0, 0x48

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->usedFeatures:[I

    :goto_0
    iget-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->usedFeatures:[I

    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v0, v0, v2

    invoke-static {v0}, Lorg/chromium/blink/mojom/WebFeature;->validate(I)V

    iget-object v0, v1, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->usedFeatures:[I

    aget v3, v0, v2

    invoke-static {v3}, Lorg/chromium/blink/mojom/WebFeature;->toKnownValue(I)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->mode:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerType:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchHandlerBypassOption:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->needRouterEvaluate:Z

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->sha256ScriptChecksum:Ljava/lang/String;

    const/16 v1, 0x18

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->routerData:Lorg/chromium/blink/mojom/ServiceWorkerRouterData;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->remoteController:Lorg/chromium/blink/mojom/ControllerServiceWorker;

    const/16 v1, 0x28

    sget-object v4, Lorg/chromium/blink/mojom/ControllerServiceWorker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->clientId:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->fetchRequestWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->objectInfo:Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->usedFeatures:[I

    const/16 v0, 0x48

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
