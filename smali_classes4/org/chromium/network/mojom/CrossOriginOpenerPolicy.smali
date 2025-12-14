.class public final Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public reportOnlyReportingEndpoint:Ljava/lang/String;

.field public reportOnlyValue:I

.field public reportingEndpoint:Ljava/lang/String;

.field public soapByDefaultValue:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->value:I

    iput p1, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportOnlyValue:I

    iput p1, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->soapByDefaultValue:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->value:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyValue;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->value:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyValue;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->value:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportOnlyValue:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyValue;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportOnlyValue:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyValue;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportOnlyValue:I

    const/16 v0, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportingEndpoint:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportOnlyReportingEndpoint:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->soapByDefaultValue:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyValue;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->soapByDefaultValue:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyValue;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->soapByDefaultValue:I
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

    sget-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->value:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportOnlyValue:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportingEndpoint:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->reportOnlyReportingEndpoint:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget p0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->soapByDefaultValue:I

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
