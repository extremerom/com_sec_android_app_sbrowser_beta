.class public final Lorg/chromium/network/mojom/CspSourceList;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowDynamic:Z

.field public allowEval:Z

.field public allowInline:Z

.field public allowInlineSpeculationRules:Z

.field public allowSelf:Z

.field public allowStar:Z

.field public allowUnsafeHashes:Z

.field public allowWasmEval:Z

.field public allowWasmUnsafeEval:Z

.field public hashes:[Lorg/chromium/network/mojom/CspHashSource;

.field public nonces:[Ljava/lang/String;

.field public reportHashAlgorithm:Ljava/lang/Integer;

.field public reportSample:Z

.field public sources:[Lorg/chromium/network/mojom/CspSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/CspSourceList;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/CspSourceList;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowSelf:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowStar:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowInline:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowInlineSpeculationRules:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowEval:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowWasmEval:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowWasmUnsafeEval:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowDynamic:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->allowUnsafeHashes:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CspSourceList;->reportSample:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CspSourceList;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/network/mojom/CspSourceList;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/network/mojom/CspSourceList;

    invoke-direct {v2, v1}, Lorg/chromium/network/mojom/CspSourceList;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/network/mojom/CspSource;

    iput-object v7, v2, Lorg/chromium/network/mojom/CspSourceList;->sources:[Lorg/chromium/network/mojom/CspSource;

    move v7, v3

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/network/mojom/CspSourceList;->sources:[Lorg/chromium/network/mojom/CspSource;

    invoke-static {v8}, Lorg/chromium/network/mojom/CspSource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CspSource;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v2, Lorg/chromium/network/mojom/CspSourceList;->nonces:[Ljava/lang/String;

    move v7, v3

    :goto_1
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    iget-object v8, v2, Lorg/chromium/network/mojom/CspSourceList;->nonces:[Ljava/lang/String;

    const/16 v9, 0x8

    invoke-static {v7, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/network/mojom/CspHashSource;

    iput-object v6, v2, Lorg/chromium/network/mojom/CspSourceList;->hashes:[Lorg/chromium/network/mojom/CspHashSource;

    move v6, v3

    :goto_2
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_3

    const/16 v7, 0x8

    invoke-static {v6, v7, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v2, Lorg/chromium/network/mojom/CspSourceList;->hashes:[Lorg/chromium/network/mojom/CspHashSource;

    invoke-static {v7}, Lorg/chromium/network/mojom/CspHashSource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CspHashSource;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/16 v1, 0x20

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/CspSourceList;->allowSelf:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/network/mojom/CspSourceList;->allowStar:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v1, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/CspSourceList;->allowInline:Z

    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/CspSourceList;->allowInlineSpeculationRules:Z

    const/4 v6, 0x4

    invoke-virtual {p0, v1, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/CspSourceList;->allowEval:Z

    const/4 v6, 0x5

    invoke-virtual {p0, v1, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/CspSourceList;->allowWasmEval:Z

    const/4 v6, 0x6

    invoke-virtual {p0, v1, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/CspSourceList;->allowWasmUnsafeEval:Z

    const/4 v6, 0x7

    invoke-virtual {p0, v1, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/network/mojom/CspSourceList;->allowDynamic:Z

    const/16 v1, 0x21

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v2, Lorg/chromium/network/mojom/CspSourceList;->allowUnsafeHashes:Z

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v2, Lorg/chromium/network/mojom/CspSourceList;->reportSample:Z

    invoke-virtual {p0, v1, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/network/mojom/CspSourceList;->reportHashAlgorithm:Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    iput-object v0, v2, Lorg/chromium/network/mojom/CspSourceList;->reportHashAlgorithm:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 11

    sget-object v0, Lorg/chromium/network/mojom/CspSourceList;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/CspSourceList;->sources:[Lorg/chromium/network/mojom/CspSource;

    const/4 v1, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v9, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v9, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v10

    :goto_0
    iget-object v3, p0, Lorg/chromium/network/mojom/CspSourceList;->sources:[Lorg/chromium/network/mojom/CspSource;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v9

    invoke-virtual {v0, v3, v4, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/CspSourceList;->nonces:[Ljava/lang/String;

    const/16 v2, 0x10

    if-nez v0, :cond_2

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v7, v10

    :goto_2
    iget-object v2, p0, Lorg/chromium/network/mojom/CspSourceList;->nonces:[Ljava/lang/String;

    array-length v3, v2

    if-ge v7, v3, :cond_3

    aget-object v5, v2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, v0

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/network/mojom/CspSourceList;->hashes:[Lorg/chromium/network/mojom/CspHashSource;

    const/16 v2, 0x18

    if-nez v0, :cond_4

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v10

    :goto_4
    iget-object v2, p0, Lorg/chromium/network/mojom/CspSourceList;->hashes:[Lorg/chromium/network/mojom/CspHashSource;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v9

    invoke-virtual {v0, v2, v3, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowSelf:Z

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowStar:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowInline:Z

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowInlineSpeculationRules:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowEval:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowWasmEval:Z

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowWasmUnsafeEval:Z

    const/4 v4, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowDynamic:Z

    const/4 v4, 0x7

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->allowUnsafeHashes:Z

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CspSourceList;->reportSample:Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object p0, p0, Lorg/chromium/network/mojom/CspSourceList;->reportHashAlgorithm:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move v2, v10

    :goto_6
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_7
    invoke-virtual {p1, v2, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 p0, 0x24

    invoke-virtual {p1, v10, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
