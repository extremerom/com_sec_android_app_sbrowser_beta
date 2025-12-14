.class public final Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public hostRemote:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

.field public receiver:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

.field public state:I

.field public url:Lorg/chromium/url/mojom/Url;

.field public versionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->versionId:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->state:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->versionId:J

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->state:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerState;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->state:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerState;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->state:I

    const/16 v0, 0x14

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedInterfaceRequestNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->receiver:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->url:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->hostRemote:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;
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
    .locals 3

    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->versionId:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->state:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->receiver:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->url:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;->hostRemote:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V

    return-void
.end method
