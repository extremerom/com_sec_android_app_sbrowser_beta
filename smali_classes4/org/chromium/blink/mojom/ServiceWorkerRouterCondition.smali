.class public final Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public notCondition:Lorg/chromium/blink/mojom/ServiceWorkerRouterNotCondition;

.field public orCondition:Lorg/chromium/blink/mojom/ServiceWorkerRouterOrCondition;

.field public request:Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;

.field public runningStatus:Lorg/chromium/blink/mojom/ServiceWorkerRouterRunningStatusCondition;

.field public urlPattern:Lorg/chromium/blink/mojom/SafeUrlPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SafeUrlPattern;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SafeUrlPattern;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->urlPattern:Lorg/chromium/blink/mojom/SafeUrlPattern;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->request:Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRouterRunningStatusCondition;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerRouterRunningStatusCondition;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->runningStatus:Lorg/chromium/blink/mojom/ServiceWorkerRouterRunningStatusCondition;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRouterOrCondition;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerRouterOrCondition;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->orCondition:Lorg/chromium/blink/mojom/ServiceWorkerRouterOrCondition;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRouterNotCondition;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerRouterNotCondition;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->notCondition:Lorg/chromium/blink/mojom/ServiceWorkerRouterNotCondition;
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

    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->urlPattern:Lorg/chromium/blink/mojom/SafeUrlPattern;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->request:Lorg/chromium/blink/mojom/ServiceWorkerRouterRequestCondition;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->runningStatus:Lorg/chromium/blink/mojom/ServiceWorkerRouterRunningStatusCondition;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->orCondition:Lorg/chromium/blink/mojom/ServiceWorkerRouterOrCondition;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/ServiceWorkerRouterCondition;->notCondition:Lorg/chromium/blink/mojom/ServiceWorkerRouterNotCondition;

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
