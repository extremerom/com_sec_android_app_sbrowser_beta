.class final Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalFrame_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalFrameReportBlinkFeatureUsageParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public features:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->features:[I

    :goto_0
    iget-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->features:[I

    array-length v2, v0

    if-ge v3, v2, :cond_1

    aget v0, v0, v3

    invoke-static {v0}, Lorg/chromium/blink/mojom/WebFeature;->validate(I)V

    iget-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->features:[I

    aget v2, v0, v3

    invoke-static {v2}, Lorg/chromium/blink/mojom/WebFeature;->toKnownValue(I)I

    move-result v2

    aput v2, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->features:[I

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x8

    invoke-virtual {p1, p0, v2, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
