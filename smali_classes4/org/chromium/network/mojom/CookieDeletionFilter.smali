.class public final Lorg/chromium/network/mojom/CookieDeletionFilter;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public cookieName:Ljava/lang/String;

.field public cookiePartitionKeyCollection:Lorg/chromium/network/mojom/CookiePartitionKeyCollection;

.field public createdAfterTime:Lorg/chromium/mojo_base/mojom/Time;

.field public createdBeforeTime:Lorg/chromium/mojo_base/mojom/Time;

.field public excludingDomains:[Ljava/lang/String;

.field public hostName:Ljava/lang/String;

.field public includingDomains:[Ljava/lang/String;

.field public partitionedStateOnly:Z

.field public sessionControl:I

.field public url:Lorg/chromium/url/mojom/Url;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/CookieDeletionFilter;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/CookieDeletionFilter;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->sessionControl:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookieDeletionFilter;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/network/mojom/CookieDeletionFilter;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/network/mojom/CookieDeletionFilter;

    invoke-direct {v2, v1}, Lorg/chromium/network/mojom/CookieDeletionFilter;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->createdAfterTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->createdBeforeTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iput-object v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->excludingDomains:[Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->excludingDomains:[Ljava/lang/String;

    move v8, v6

    :goto_0
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_2

    iget-object v9, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->excludingDomains:[Ljava/lang/String;

    const/16 v10, 0x8

    invoke-static {v8, v10, v1, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v4, 0x20

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_3

    iput-object v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->includingDomains:[Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->includingDomains:[Ljava/lang/String;

    move v5, v6

    :goto_2
    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v7, :cond_4

    iget-object v7, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->includingDomains:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v5, v8, v1, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->cookieName:Ljava/lang/String;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->hostName:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->url:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->sessionControl:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieDeletionSessionControl;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->sessionControl:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieDeletionSessionControl;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->sessionControl:I

    const/16 v0, 0x44

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->partitionedStateOnly:Z

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/CookiePartitionKeyCollection;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookiePartitionKeyCollection;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/CookieDeletionFilter;->cookiePartitionKeyCollection:Lorg/chromium/network/mojom/CookiePartitionKeyCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/network/mojom/CookieDeletionFilter;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->createdAfterTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->createdBeforeTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->excludingDomains:[Ljava/lang/String;

    const/4 v10, -0x1

    const/16 v1, 0x18

    const/4 v11, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v11

    :goto_0
    iget-object v1, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->excludingDomains:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_1

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v11

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->includingDomains:[Ljava/lang/String;

    const/16 v1, 0x20

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v11

    :goto_2
    iget-object v1, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->includingDomains:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_3

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v11

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->cookieName:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->hostName:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->url:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->sessionControl:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->partitionedStateOnly:Z

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object p0, p0, Lorg/chromium/network/mojom/CookieDeletionFilter;->cookiePartitionKeyCollection:Lorg/chromium/network/mojom/CookiePartitionKeyCollection;

    const/16 v0, 0x48

    invoke-virtual {p1, p0, v0, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
