.class public final Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;
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

.field public cacheStorage:Lorg/chromium/blink/mojom/CacheStorage;

.field public hostRemote:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

.field public scriptLoaderFactoryRemote:Lorg/chromium/network/mojom/UrlLoaderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->hostRemote:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/UrlLoaderFactory;

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->scriptLoaderFactoryRemote:Lorg/chromium/network/mojom/UrlLoaderFactory;

    sget-object v0, Lorg/chromium/blink/mojom/CacheStorage;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/CacheStorage;

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->cacheStorage:Lorg/chromium/blink/mojom/CacheStorage;

    sget-object v0, Lorg/chromium/blink/mojom/BrowserInterfaceBroker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;
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

    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->hostRemote:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->scriptLoaderFactoryRemote:Lorg/chromium/network/mojom/UrlLoaderFactory;

    sget-object v1, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->cacheStorage:Lorg/chromium/blink/mojom/CacheStorage;

    const/16 v1, 0x18

    sget-object v3, Lorg/chromium/blink/mojom/CacheStorage;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/ServiceWorkerProviderInfoForStartWorker;->browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    const/16 v0, 0x20

    sget-object v1, Lorg/chromium/blink/mojom/BrowserInterfaceBroker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
