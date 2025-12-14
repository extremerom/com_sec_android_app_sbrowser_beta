.class final Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AcceptChFrameObserverOnAcceptChFrameReceivedParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public acceptChFrame:[I

.field public origin:Lorg/chromium/url/internal/mojom/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v0, 0x10

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->acceptChFrame:[I

    :goto_0
    iget-object v0, v1, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->acceptChFrame:[I

    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v0, v0, v2

    invoke-static {v0}, Lorg/chromium/network/mojom/WebClientHintsType;->validate(I)V

    iget-object v0, v1, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->acceptChFrame:[I

    aget v3, v0, v2

    invoke-static {v3}, Lorg/chromium/network/mojom/WebClientHintsType;->toKnownValue(I)I

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

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/AcceptChFrameObserver_Internal$AcceptChFrameObserverOnAcceptChFrameReceivedParams;->acceptChFrame:[I

    const/16 v0, 0x10

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
