.class final Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalFrame_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public alpnNegotiatedProtocol:Ljava/lang/String;

.field public completionStatus:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

.field public connectionInfo:I

.field public initialUrl:Lorg/chromium/url/mojom/Url;

.field public isSecureTransport:Z

.field public isValidated:Z

.field public loadTimingInfo:Lorg/chromium/network/mojom/LoadTimingInfo;

.field public mimeType:Ljava/lang/String;

.field public normalizedServerTiming:Ljava/lang/String;

.field public redirectTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public requestStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public responseCode:I

.field public responseStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public startTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public subframeToken:Lorg/chromium/blink/mojom/FrameToken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x78

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/chromium/blink/mojom/FrameToken;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/FrameToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->subframeToken:Lorg/chromium/blink/mojom/FrameToken;

    const/16 v0, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->initialUrl:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->startTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->redirectTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->requestStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->responseStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->responseCode:I

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->connectionInfo:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ConnectionInfo;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->connectionInfo:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ConnectionInfo;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->connectionInfo:I

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->mimeType:Ljava/lang/String;

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/LoadTimingInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/LoadTimingInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->loadTimingInfo:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->isSecureTransport:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->isValidated:Z

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->normalizedServerTiming:Ljava/lang/String;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->completionStatus:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->subframeToken:Lorg/chromium/blink/mojom/FrameToken;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->initialUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->startTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->redirectTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->requestStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->responseStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->responseCode:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->connectionInfo:I

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->mimeType:Ljava/lang/String;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->loadTimingInfo:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->isSecureTransport:Z

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->isValidated:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->normalizedServerTiming:Ljava/lang/String;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->completionStatus:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    const/16 v0, 0x70

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
