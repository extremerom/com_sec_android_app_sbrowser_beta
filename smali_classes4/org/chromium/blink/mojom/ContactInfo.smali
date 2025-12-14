.class public final Lorg/chromium/blink/mojom/ContactInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public address:[Lorg/chromium/payments/mojom/PaymentAddress;

.field public email:[Ljava/lang/String;

.field public icon:[Lorg/chromium/blink/mojom/ContactIconBlob;

.field public name:[Ljava/lang/String;

.field public tel:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ContactInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ContactInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ContactInfo;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/ContactInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/ContactInfo;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/ContactInfo;-><init>(I)V

    const/4 v1, 0x1

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iput-object v0, v2, Lorg/chromium/blink/mojom/ContactInfo;->name:[Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v2, Lorg/chromium/blink/mojom/ContactInfo;->name:[Ljava/lang/String;

    move v8, v6

    :goto_0
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_2

    iget-object v9, v2, Lorg/chromium/blink/mojom/ContactInfo;->name:[Ljava/lang/String;

    const/16 v10, 0x8

    invoke-static {v8, v10, v3, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v4, 0x10

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_3

    iput-object v0, v2, Lorg/chromium/blink/mojom/ContactInfo;->email:[Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v2, Lorg/chromium/blink/mojom/ContactInfo;->email:[Ljava/lang/String;

    move v8, v6

    :goto_2
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_4

    iget-object v9, v2, Lorg/chromium/blink/mojom/ContactInfo;->email:[Ljava/lang/String;

    const/16 v10, 0x8

    invoke-static {v8, v10, v3, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/16 v4, 0x18

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_5

    iput-object v0, v2, Lorg/chromium/blink/mojom/ContactInfo;->tel:[Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v2, Lorg/chromium/blink/mojom/ContactInfo;->tel:[Ljava/lang/String;

    move v8, v6

    :goto_4
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_6

    iget-object v9, v2, Lorg/chromium/blink/mojom/ContactInfo;->tel:[Ljava/lang/String;

    const/16 v10, 0x8

    invoke-static {v8, v10, v3, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const/16 v4, 0x20

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_7

    iput-object v0, v2, Lorg/chromium/blink/mojom/ContactInfo;->address:[Lorg/chromium/payments/mojom/PaymentAddress;

    goto :goto_7

    :cond_7
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/payments/mojom/PaymentAddress;

    iput-object v8, v2, Lorg/chromium/blink/mojom/ContactInfo;->address:[Lorg/chromium/payments/mojom/PaymentAddress;

    move v8, v6

    :goto_6
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_8

    const/16 v9, 0x8

    invoke-static {v8, v9, v3, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/blink/mojom/ContactInfo;->address:[Lorg/chromium/payments/mojom/PaymentAddress;

    invoke-static {v9}, Lorg/chromium/payments/mojom/PaymentAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentAddress;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    const/16 v4, 0x28

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    if-nez v1, :cond_9

    iput-object v0, v2, Lorg/chromium/blink/mojom/ContactInfo;->icon:[Lorg/chromium/blink/mojom/ContactIconBlob;

    goto :goto_9

    :cond_9
    invoke-virtual {v1, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v4, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v4, v4, [Lorg/chromium/blink/mojom/ContactIconBlob;

    iput-object v4, v2, Lorg/chromium/blink/mojom/ContactInfo;->icon:[Lorg/chromium/blink/mojom/ContactIconBlob;

    move v4, v6

    :goto_8
    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v4, v5, :cond_a

    const/16 v5, 0x8

    invoke-static {v4, v5, v3, v1, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    iget-object v7, v2, Lorg/chromium/blink/mojom/ContactInfo;->icon:[Lorg/chromium/blink/mojom/ContactIconBlob;

    invoke-static {v5}, Lorg/chromium/blink/mojom/ContactIconBlob;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ContactIconBlob;

    move-result-object v5

    aput-object v5, v7, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_a
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/blink/mojom/ContactInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ContactInfo;->name:[Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p1, v11, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v11, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v7, v9

    :goto_0
    iget-object v2, p0, Lorg/chromium/blink/mojom/ContactInfo;->name:[Ljava/lang/String;

    array-length v3, v2

    if-ge v7, v3, :cond_1

    aget-object v5, v2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v11

    move-object v4, v0

    move v6, v9

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/ContactInfo;->email:[Ljava/lang/String;

    const/16 v2, 0x10

    if-nez v0, :cond_2

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v7, v9

    :goto_2
    iget-object v2, p0, Lorg/chromium/blink/mojom/ContactInfo;->email:[Ljava/lang/String;

    array-length v3, v2

    if-ge v7, v3, :cond_3

    aget-object v5, v2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v11

    move-object v4, v0

    move v6, v9

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/blink/mojom/ContactInfo;->tel:[Ljava/lang/String;

    const/16 v2, 0x18

    if-nez v0, :cond_4

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v7, v9

    :goto_4
    iget-object v2, p0, Lorg/chromium/blink/mojom/ContactInfo;->tel:[Ljava/lang/String;

    array-length v3, v2

    if-ge v7, v3, :cond_5

    aget-object v5, v2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v11

    move-object v4, v0

    move v6, v9

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/blink/mojom/ContactInfo;->address:[Lorg/chromium/payments/mojom/PaymentAddress;

    const/16 v2, 0x20

    if-nez v0, :cond_6

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v9

    :goto_6
    iget-object v3, p0, Lorg/chromium/blink/mojom/ContactInfo;->address:[Lorg/chromium/payments/mojom/PaymentAddress;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v11

    invoke-virtual {v0, v3, v4, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/chromium/blink/mojom/ContactInfo;->icon:[Lorg/chromium/blink/mojom/ContactIconBlob;

    const/16 v2, 0x28

    if-nez v0, :cond_8

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v9

    :goto_8
    iget-object v1, p0, Lorg/chromium/blink/mojom/ContactInfo;->icon:[Lorg/chromium/blink/mojom/ContactIconBlob;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    aget-object v1, v1, v0

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v11

    invoke-virtual {p1, v1, v2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    return-void
.end method
