.class public final Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public billingAddressId:Ljava/lang/String;

.field public cardArtUrl:Ljava/lang/String;

.field public cardNetwork:Ljava/lang/String;

.field public cardNickName:Ljava/lang/String;

.field public cardNumber:Ljava/lang/String;

.field public expirationMonth:Ljava/lang/String;

.field public expirationMonthOfPhysicalCard:Ljava/lang/String;

.field public expirationYear:Ljava/lang/String;

.field public expirationYearOfPhysicalCard:Ljava/lang/String;

.field public guid:Ljava/lang/String;

.field public isVirtualCard:Z

.field public lastFourDigits:Ljava/lang/String;

.field public lastFourDigitsOfPhysicalCard:Ljava/lang/String;

.field public modificationDate:J

.field public name:Ljava/lang/String;

.field public origin:Ljava/lang/String;

.field public twoDigitsExpirationYear:Ljava/lang/String;

.field public useCount:J

.field public useDate:J

.field public useDateForSamsungPass:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xa8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa8

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->twoDigitsExpirationYear:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigits:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNetwork:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigitsOfPhysicalCard:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonthOfPhysicalCard:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYearOfPhysicalCard:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardArtUrl:Ljava/lang/String;

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDate:J

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->modificationDate:J

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->twoDigitsExpirationYear:Ljava/lang/String;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigits:Ljava/lang/String;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNetwork:Ljava/lang/String;

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDateForSamsungPass:J

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->isVirtualCard:Z

    const/16 v0, 0x88

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigitsOfPhysicalCard:Ljava/lang/String;

    const/16 v0, 0x90

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonthOfPhysicalCard:Ljava/lang/String;

    const/16 v0, 0x98

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYearOfPhysicalCard:Ljava/lang/String;

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardArtUrl:Ljava/lang/String;
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

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDate:J

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->modificationDate:J

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->twoDigitsExpirationYear:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigits:Ljava/lang/String;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNetwork:Ljava/lang/String;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDateForSamsungPass:J

    const/16 v3, 0x78

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->isVirtualCard:Z

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigitsOfPhysicalCard:Ljava/lang/String;

    const/16 v1, 0x88

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonthOfPhysicalCard:Ljava/lang/String;

    const/16 v1, 0x90

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYearOfPhysicalCard:Ljava/lang/String;

    const/16 v1, 0x98

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardArtUrl:Ljava/lang/String;

    const/16 v0, 0xa0

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
