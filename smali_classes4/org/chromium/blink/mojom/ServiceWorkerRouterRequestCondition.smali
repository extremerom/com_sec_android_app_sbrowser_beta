.class public final Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public destination:I

.field public hasDestination:Z

.field public hasMode:Z

.field public method:Ljava/lang/String;

.field public mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->hasMode:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->hasDestination:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->method:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->hasMode:Z

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->hasDestination:Z

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->mode:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->mode:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->mode:I

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->destination:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestDestination;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->destination:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestDestination;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->destination:I
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

    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->method:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->hasMode:Z

    const/4 v1, 0x0

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->hasDestination:Z

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->mode:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->destination:I

    const/16 v0, 0x18

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
