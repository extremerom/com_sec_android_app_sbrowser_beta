.class final Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceNativePasswordStoreFillMatchingLoginsParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public formDigest:Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;->formDigest:Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 2

    sget-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;->formDigest:Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
