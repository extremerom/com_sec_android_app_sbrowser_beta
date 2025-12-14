.class final Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalFrameHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalFrameHostSendFencedFrameReportingBeaconParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public crossOriginExposed:Z

.field public destinations:[I

.field public eventData:Ljava/lang/String;

.field public eventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->eventData:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->eventType:Ljava/lang/String;

    const/16 v0, 0x18

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->destinations:[I

    move v0, v2

    :goto_0
    iget-object v3, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->destinations:[I

    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget v3, v3, v0

    invoke-static {v3}, Lorg/chromium/blink/mojom/ReportingDestination;->validate(I)V

    iget-object v3, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->destinations:[I

    aget v4, v3, v0

    invoke-static {v4}, Lorg/chromium/blink/mojom/ReportingDestination;->toKnownValue(I)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->crossOriginExposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->eventData:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->eventType:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->destinations:[I

    const/16 v1, 0x18

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-boolean p0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->crossOriginExposed:Z

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
