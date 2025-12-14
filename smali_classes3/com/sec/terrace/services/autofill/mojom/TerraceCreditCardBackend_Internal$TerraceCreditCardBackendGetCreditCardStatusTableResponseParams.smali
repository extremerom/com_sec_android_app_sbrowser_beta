.class final Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceCreditCardBackendGetCreditCardStatusTableResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    array-length v5, v4

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;

    move v7, v2

    :goto_0
    iget v8, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->table:Ljava/util/Map;

    :goto_1
    array-length v0, v4

    if-ge v2, v0, :cond_2

    iget-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->table:Ljava/util/Map;

    aget v3, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v5, v6, v2

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->table:Ljava/util/Map;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->table:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [I

    new-array v4, v0, [Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;

    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;->table:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v5, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    invoke-virtual {p1, v3, v2, v1, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_2

    aget-object v3, v4, p1

    mul-int/lit8 v5, p1, 0x8

    add-int/2addr v5, v2

    invoke-virtual {p0, v3, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
