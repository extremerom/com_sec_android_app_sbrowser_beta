.class final Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/DevToolsObserver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DevToolsObserverOnRawResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public cookiePartitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

.field public cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

.field public devtoolRequestId:Ljava/lang/String;

.field public headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

.field public httpStatusCode:I

.field public rawResponseHeaders:Ljava/lang/String;

.field public resourceAddressSpace:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->devtoolRequestId:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

    iput-object v6, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

    invoke-static {v7}, Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/network/mojom/HttpRawHeaderPair;

    iput-object v5, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    move v5, v2

    :goto_1
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    invoke-static {v6}, Lorg/chromium/network/mojom/HttpRawHeaderPair;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HttpRawHeaderPair;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x20

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->rawResponseHeaders:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->resourceAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->resourceAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->resourceAddressSpace:I

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->httpStatusCode:I

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/CookiePartitionKey;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookiePartitionKey;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiePartitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->devtoolRequestId:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

    const/4 v3, -0x1

    const/16 v4, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    const/16 v4, 0x18

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_2
    iget-object v4, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->rawResponseHeaders:Ljava/lang/String;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->resourceAddressSpace:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->httpStatusCode:I

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiePartitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

    const/16 v0, 0x30

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
