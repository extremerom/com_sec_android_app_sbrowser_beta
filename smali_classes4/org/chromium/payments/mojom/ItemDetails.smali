.class public final Lorg/chromium/payments/mojom/ItemDetails;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public description:Ljava/lang/String;

.field public freeTrialPeriod:Ljava/lang/String;

.field public iconUrls:[Lorg/chromium/url/mojom/Url;

.field public introductoryPrice:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

.field public introductoryPriceCycles:I

.field public introductoryPricePeriod:Ljava/lang/String;

.field public itemId:Ljava/lang/String;

.field public price:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

.field public subscriptionPeriod:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x58

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0, v1}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/payments/mojom/ItemDetails;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/payments/mojom/ItemDetails;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/payments/mojom/ItemDetails;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/ItemDetails;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/payments/mojom/ItemDetails;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/payments/mojom/ItemDetails;

    invoke-direct {v2, v1}, Lorg/chromium/payments/mojom/ItemDetails;-><init>(I)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->itemId:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-virtual {p0, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->title:Ljava/lang/String;

    const/16 v5, 0x18

    invoke-virtual {p0, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->description:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-virtual {p0, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->price:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    const/16 v5, 0x28

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->subscriptionPeriod:Ljava/lang/String;

    const/16 v5, 0x30

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->freeTrialPeriod:Ljava/lang/String;

    const/16 v5, 0x38

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPrice:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    const/16 v5, 0x40

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPricePeriod:Ljava/lang/String;

    if-lt v1, v6, :cond_2

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, v2, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPriceCycles:I

    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, v2, Lorg/chromium/payments/mojom/ItemDetails;->type:I

    invoke-static {v1}, Lorg/chromium/payments/mojom/ItemType;->validate(I)V

    iget v1, v2, Lorg/chromium/payments/mojom/ItemDetails;->type:I

    invoke-static {v1}, Lorg/chromium/payments/mojom/ItemType;->toKnownValue(I)I

    move-result v1

    iput v1, v2, Lorg/chromium/payments/mojom/ItemDetails;->type:I

    const/16 v1, 0x50

    invoke-virtual {p0, v1, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    if-nez v1, :cond_1

    iput-object v0, v2, Lorg/chromium/payments/mojom/ItemDetails;->iconUrls:[Lorg/chromium/url/mojom/Url;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/url/mojom/Url;

    iput-object v5, v2, Lorg/chromium/payments/mojom/ItemDetails;->iconUrls:[Lorg/chromium/url/mojom/Url;

    move v5, v4

    :goto_0
    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v3, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v2, Lorg/chromium/payments/mojom/ItemDetails;->iconUrls:[Lorg/chromium/url/mojom/Url;

    invoke-static {v6}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 10

    sget-object v0, Lorg/chromium/payments/mojom/ItemDetails;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->itemId:Ljava/lang/String;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->title:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->description:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->price:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->subscriptionPeriod:Ljava/lang/String;

    const/16 v1, 0x28

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->freeTrialPeriod:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPrice:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPricePeriod:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPriceCycles:I

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->type:I

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->iconUrls:[Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x50

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v6, v9

    :goto_0
    iget-object v0, p0, Lorg/chromium/payments/mojom/ItemDetails;->iconUrls:[Lorg/chromium/url/mojom/Url;

    array-length v1, v0

    if-ge v6, v1, :cond_1

    aget-object v4, v0, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, p1

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v6

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
