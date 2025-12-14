.class final Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ServiceWorker_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceWorkerInitializeGlobalScopeParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public ancestorFrameType:I

.field public associatedInterfacesFromBrowser:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

.field public associatedInterfacesToBrowser:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

.field public fetchHandlerExistence:I

.field public registrationInfo:Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectInfo;

.field public serviceWorkerHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

.field public serviceWorkerInfo:Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

.field public storageKey:Lorg/chromium/blink/mojom/StorageKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->serviceWorkerHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->associatedInterfacesToBrowser:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedInterfaceRequestNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->associatedInterfacesFromBrowser:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->fetchHandlerExistence:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/FetchHandlerExistence;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->fetchHandlerExistence:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/FetchHandlerExistence;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->fetchHandlerExistence:I

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->registrationInfo:Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectInfo;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->serviceWorkerInfo:Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->ancestorFrameType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AncestorFrameType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->ancestorFrameType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AncestorFrameType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->ancestorFrameType:I

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/StorageKey;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/StorageKey;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->storageKey:Lorg/chromium/blink/mojom/StorageKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->serviceWorkerHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->associatedInterfacesToBrowser:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->associatedInterfacesFromBrowser:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->fetchHandlerExistence:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->registrationInfo:Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectInfo;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->serviceWorkerInfo:Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->ancestorFrameType:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/ServiceWorker_Internal$ServiceWorkerInitializeGlobalScopeParams;->storageKey:Lorg/chromium/blink/mojom/StorageKey;

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
