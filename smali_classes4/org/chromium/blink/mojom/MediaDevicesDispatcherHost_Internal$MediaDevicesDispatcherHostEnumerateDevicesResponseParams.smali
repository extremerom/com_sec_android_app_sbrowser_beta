.class final Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaDevicesDispatcherHostEnumerateDevicesResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public audioInputDeviceCapabilities:[Lorg/chromium/blink/mojom/AudioInputDeviceCapabilities;

.field public enumeration:[[Lorg/chromium/blink/mojom/MediaDeviceInfo;

.field public videoInputDeviceCapabilities:[Lorg/chromium/blink/mojom/VideoInputDeviceCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [[Lorg/chromium/blink/mojom/MediaDeviceInfo;

    iput-object v6, v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->enumeration:[[Lorg/chromium/blink/mojom/MediaDeviceInfo;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_2

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->enumeration:[[Lorg/chromium/blink/mojom/MediaDeviceInfo;

    iget v10, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v10, v10, [Lorg/chromium/blink/mojom/MediaDeviceInfo;

    aput-object v10, v9, v6

    move v9, v2

    :goto_1
    iget v10, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_1

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v7, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    iget-object v11, v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->enumeration:[[Lorg/chromium/blink/mojom/MediaDeviceInfo;

    aget-object v11, v11, v6

    invoke-static {v10}, Lorg/chromium/blink/mojom/MediaDeviceInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/MediaDeviceInfo;

    move-result-object v10

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/VideoInputDeviceCapabilities;

    iput-object v6, v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->videoInputDeviceCapabilities:[Lorg/chromium/blink/mojom/VideoInputDeviceCapabilities;

    move v6, v2

    :goto_2
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_3

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->videoInputDeviceCapabilities:[Lorg/chromium/blink/mojom/VideoInputDeviceCapabilities;

    invoke-static {v7}, Lorg/chromium/blink/mojom/VideoInputDeviceCapabilities;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/VideoInputDeviceCapabilities;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/blink/mojom/AudioInputDeviceCapabilities;

    iput-object v5, v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->audioInputDeviceCapabilities:[Lorg/chromium/blink/mojom/AudioInputDeviceCapabilities;

    move v5, v2

    :goto_3
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_4

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->audioInputDeviceCapabilities:[Lorg/chromium/blink/mojom/AudioInputDeviceCapabilities;

    invoke-static {v6}, Lorg/chromium/blink/mojom/AudioInputDeviceCapabilities;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AudioInputDeviceCapabilities;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 9

    sget-object v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->enumeration:[[Lorg/chromium/blink/mojom/MediaDeviceInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->enumeration:[[Lorg/chromium/blink/mojom/MediaDeviceInfo;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v5, v5, v4

    if-nez v5, :cond_1

    mul-int/lit8 v5, v4, 0x8

    add-int/2addr v5, v3

    invoke-virtual {v0, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_1
    array-length v5, v5

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v3

    invoke-virtual {v0, v5, v6, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v5

    move v6, v2

    :goto_1
    iget-object v7, p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->enumeration:[[Lorg/chromium/blink/mojom/MediaDeviceInfo;

    aget-object v7, v7, v4

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget-object v7, v7, v6

    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v3

    invoke-virtual {v5, v7, v8, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->videoInputDeviceCapabilities:[Lorg/chromium/blink/mojom/VideoInputDeviceCapabilities;

    const/16 v4, 0x10

    if-nez v0, :cond_4

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_4
    iget-object v5, p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->videoInputDeviceCapabilities:[Lorg/chromium/blink/mojom/VideoInputDeviceCapabilities;

    array-length v6, v5

    if-ge v4, v6, :cond_5

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v3

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->audioInputDeviceCapabilities:[Lorg/chromium/blink/mojom/AudioInputDeviceCapabilities;

    const/16 v4, 0x18

    if-nez v0, :cond_6

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v2

    :goto_6
    iget-object v1, p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;->audioInputDeviceCapabilities:[Lorg/chromium/blink/mojom/AudioInputDeviceCapabilities;

    array-length v4, v1

    if-ge v0, v4, :cond_7

    aget-object v1, v1, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v3

    invoke-virtual {p1, v1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method
