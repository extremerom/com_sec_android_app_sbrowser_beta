.class public final Lorg/chromium/blink/mojom/RendererPreferences;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public acceptLanguages:Ljava/lang/String;

.field public activeSelectionBgColor:I

.field public activeSelectionFgColor:I

.field public allowCrossOriginAuthPrompt:Z

.field public browserHandlesAllTopLevelRequests:Z

.field public canAcceptLoadDrops:Z

.field public canvasNoiseToken:J

.field public caretBlinkInterval:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public caretBrowsingEnabled:Z

.field public customUa:Ljava/lang/String;

.field public dexMode:I

.field public enableDoNotTrack:Z

.field public enableEncryptedMedia:Z

.field public enableReferrers:Z

.field public explicitlyAllowedNetworkPorts:[S

.field public focusRingColor:I

.field public hinting:I

.field public inactiveSelectionBgColor:I

.field public inactiveSelectionFgColor:I

.field public isVisionTextSupported:Z

.field public pluginFullscreenAllowed:Z

.field public screenAntiFingerprintAllowlist:[Ljava/lang/String;

.field public sendSubresourceNotification:Z

.field public shouldAntialiasText:Z

.field public subpixelRendering:I

.field public useAutohinter:Z

.field public useBitmaps:Z

.field public useCustomColors:Z

.field public useSubpixelPositioning:Z

.field public userAgentOverride:Lorg/chromium/blink/mojom/UserAgentOverride;

.field public usesPlatformAutofill:Z

.field public webAudioAntiFingerprintAllowlist:[Ljava/lang/String;

.field public webrtcIpHandlingPolicy:I

.field public webrtcIpHandlingUrls:[Lorg/chromium/blink/mojom/WebRtcIpHandlingUrlEntry;

.field public webrtcLocalIpsAllowedUrls:[Ljava/lang/String;

.field public webrtcUdpMaxPort:S

.field public webrtcUdpMinPort:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/RendererPreferences;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/RendererPreferences;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x88

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->canAcceptLoadDrops:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->shouldAntialiasText:Z

    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->hinting:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->useAutohinter:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->useBitmaps:Z

    iput v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->subpixelRendering:I

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->useSubpixelPositioning:Z

    const v1, -0x1a6900

    iput v1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->focusRingColor:I

    const v1, -0xe6982e

    iput v1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->activeSelectionBgColor:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->activeSelectionFgColor:I

    const v1, -0x373738

    iput v1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->inactiveSelectionBgColor:I

    const v1, -0xcdcdce

    iput v1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->inactiveSelectionFgColor:I

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->browserHandlesAllTopLevelRequests:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->useCustomColors:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->enableReferrers:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->allowCrossOriginAuthPrompt:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->enableDoNotTrack:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->enableEncryptedMedia:Z

    iput-short v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcUdpMinPort:S

    iput-short v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcUdpMaxPort:S

    iput v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->dexMode:I

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->isVisionTextSupported:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->sendSubresourceNotification:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->pluginFullscreenAllowed:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->caretBrowsingEnabled:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->usesPlatformAutofill:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->canvasNoiseToken:J

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/RendererPreferences;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/RendererPreferences;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/RendererPreferences;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/RendererPreferences;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/RendererPreferences;->canAcceptLoadDrops:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->shouldAntialiasText:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/RendererPreferences;->useAutohinter:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/blink/mojom/RendererPreferences;->useBitmaps:Z

    const/4 v6, 0x4

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/blink/mojom/RendererPreferences;->useSubpixelPositioning:Z

    const/4 v7, 0x5

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v8

    iput-boolean v8, v1, Lorg/chromium/blink/mojom/RendererPreferences;->browserHandlesAllTopLevelRequests:Z

    const/4 v8, 0x6

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v1, Lorg/chromium/blink/mojom/RendererPreferences;->useCustomColors:Z

    const/4 v9, 0x7

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/blink/mojom/RendererPreferences;->enableReferrers:Z

    const/16 v10, 0x9

    invoke-virtual {p0, v10, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v1, Lorg/chromium/blink/mojom/RendererPreferences;->allowCrossOriginAuthPrompt:Z

    invoke-virtual {p0, v10, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v1, Lorg/chromium/blink/mojom/RendererPreferences;->enableDoNotTrack:Z

    invoke-virtual {p0, v10, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->enableEncryptedMedia:Z

    invoke-virtual {p0, v10, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->isVisionTextSupported:Z

    invoke-virtual {p0, v10, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->sendSubresourceNotification:Z

    invoke-virtual {p0, v10, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->pluginFullscreenAllowed:Z

    invoke-virtual {p0, v10, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->caretBrowsingEnabled:Z

    invoke-virtual {p0, v10, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->usesPlatformAutofill:Z

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v4

    iput-short v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcUdpMinPort:S

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->hinting:I

    invoke-static {v4}, Lorg/chromium/gfx/mojom/Hinting;->validate(I)V

    iget v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->hinting:I

    invoke-static {v4}, Lorg/chromium/gfx/mojom/Hinting;->toKnownValue(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->hinting:I

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->subpixelRendering:I

    invoke-static {v4}, Lorg/chromium/gfx/mojom/SubpixelRendering;->validate(I)V

    iget v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->subpixelRendering:I

    invoke-static {v4}, Lorg/chromium/gfx/mojom/SubpixelRendering;->toKnownValue(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->subpixelRendering:I

    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->focusRingColor:I

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->activeSelectionBgColor:I

    const/16 v4, 0x1c

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->activeSelectionFgColor:I

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->inactiveSelectionBgColor:I

    const/16 v4, 0x24

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/RendererPreferences;->inactiveSelectionFgColor:I

    const/16 v4, 0x28

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/RendererPreferences;->caretBlinkInterval:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcIpHandlingPolicy:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/WebRtcIpHandlingPolicy;->validate(I)V

    iget v3, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcIpHandlingPolicy:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/WebRtcIpHandlingPolicy;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcIpHandlingPolicy:I

    const/16 v3, 0x34

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v3

    iput-short v3, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcUdpMaxPort:S

    const/16 v3, 0x38

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/WebRtcIpHandlingUrlEntry;

    iput-object v6, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcIpHandlingUrls:[Lorg/chromium/blink/mojom/WebRtcIpHandlingUrlEntry;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcIpHandlingUrls:[Lorg/chromium/blink/mojom/WebRtcIpHandlingUrlEntry;

    invoke-static {v7}, Lorg/chromium/blink/mojom/WebRtcIpHandlingUrlEntry;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WebRtcIpHandlingUrlEntry;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/RendererPreferences;->dexMode:I

    const/16 v3, 0x48

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webAudioAntiFingerprintAllowlist:[Ljava/lang/String;

    move v6, v2

    :goto_1
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_2

    iget-object v7, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webAudioAntiFingerprintAllowlist:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/blink/mojom/RendererPreferences;->screenAntiFingerprintAllowlist:[Ljava/lang/String;

    move v6, v2

    :goto_2
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_3

    iget-object v7, v1, Lorg/chromium/blink/mojom/RendererPreferences;->screenAntiFingerprintAllowlist:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0x58

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcLocalIpsAllowedUrls:[Ljava/lang/String;

    move v6, v2

    :goto_3
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_4

    iget-object v7, v1, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcLocalIpsAllowedUrls:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/UserAgentOverride;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/UserAgentOverride;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/RendererPreferences;->userAgentOverride:Lorg/chromium/blink/mojom/UserAgentOverride;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/RendererPreferences;->customUa:Ljava/lang/String;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/RendererPreferences;->acceptLanguages:Ljava/lang/String;

    const/16 v0, 0x78

    invoke-virtual {p0, v0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readShorts(III)[S

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/RendererPreferences;->explicitlyAllowedNetworkPorts:[S

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/blink/mojom/RendererPreferences;->canvasNoiseToken:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 11

    sget-object v0, Lorg/chromium/blink/mojom/RendererPreferences;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->canAcceptLoadDrops:Z

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->shouldAntialiasText:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v8, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->useAutohinter:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v8, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->useBitmaps:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v8, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->useSubpixelPositioning:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v8, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->browserHandlesAllTopLevelRequests:Z

    const/4 v5, 0x5

    invoke-virtual {p1, v0, v8, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->useCustomColors:Z

    const/4 v6, 0x6

    invoke-virtual {p1, v0, v8, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->enableReferrers:Z

    const/4 v7, 0x7

    invoke-virtual {p1, v0, v8, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->allowCrossOriginAuthPrompt:Z

    const/16 v10, 0x9

    invoke-virtual {p1, v0, v10, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->enableDoNotTrack:Z

    invoke-virtual {p1, v0, v10, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->enableEncryptedMedia:Z

    invoke-virtual {p1, v0, v10, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->isVisionTextSupported:Z

    invoke-virtual {p1, v0, v10, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->sendSubresourceNotification:Z

    invoke-virtual {p1, v0, v10, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->pluginFullscreenAllowed:Z

    invoke-virtual {p1, v0, v10, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->caretBrowsingEnabled:Z

    invoke-virtual {p1, v0, v10, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->usesPlatformAutofill:Z

    invoke-virtual {p1, v0, v10, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-short v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcUdpMinPort:S

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->hinting:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->subpixelRendering:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->focusRingColor:I

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->activeSelectionBgColor:I

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->activeSelectionFgColor:I

    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->inactiveSelectionBgColor:I

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->inactiveSelectionFgColor:I

    const/16 v2, 0x24

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->caretBlinkInterval:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcIpHandlingPolicy:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-short v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcUdpMaxPort:S

    const/16 v1, 0x34

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcIpHandlingUrls:[Lorg/chromium/blink/mojom/WebRtcIpHandlingUrlEntry;

    const/16 v1, 0x38

    const/4 v10, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_0
    iget-object v2, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcIpHandlingUrls:[Lorg/chromium/blink/mojom/WebRtcIpHandlingUrlEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v8

    invoke-virtual {v0, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->dexMode:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webAudioAntiFingerprintAllowlist:[Ljava/lang/String;

    const/16 v1, 0x48

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_2
    iget-object v1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webAudioAntiFingerprintAllowlist:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_3

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->screenAntiFingerprintAllowlist:[Ljava/lang/String;

    const/16 v1, 0x50

    if-nez v0, :cond_4

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_4
    iget-object v1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->screenAntiFingerprintAllowlist:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_5

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcLocalIpsAllowedUrls:[Ljava/lang/String;

    const/16 v1, 0x58

    if-nez v0, :cond_6

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_6
    iget-object v1, p0, Lorg/chromium/blink/mojom/RendererPreferences;->webrtcLocalIpsAllowedUrls:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_7

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->userAgentOverride:Lorg/chromium/blink/mojom/UserAgentOverride;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->customUa:Ljava/lang/String;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->acceptLanguages:Ljava/lang/String;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->explicitlyAllowedNetworkPorts:[S

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v9, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode([SIII)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/RendererPreferences;->canvasNoiseToken:J

    const/16 p0, 0x80

    invoke-virtual {p1, v0, v1, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    return-void
.end method
