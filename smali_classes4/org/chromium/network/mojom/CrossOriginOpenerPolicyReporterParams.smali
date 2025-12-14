.class public final Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public endpointDefined:Z

.field public reportType:I

.field public reportedWindowUrl:Ljava/lang/String;

.field public reporter:Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->reportType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CoopAccessReportType;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->reportType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CoopAccessReportType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->reportType:I

    sget-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporter;

    iput-object v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->reporter:Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporter;

    const/16 v0, 0x14

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->endpointDefined:Z

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->reportedWindowUrl:Ljava/lang/String;
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

    sget-object v0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->reportType:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->reporter:Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporter;

    sget-object v1, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->endpointDefined:Z

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object p0, p0, Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;->reportedWindowUrl:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
