.class public final Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public fetchedFonts:[Lorg/chromium/url/mojom/Url;

.field public lcpElementLocators:[Lorg/chromium/mojo_base/mojom/ByteString;

.field public lcpInfluencerScripts:[Lorg/chromium/url/mojom/Url;

.field public preconnectOrigins:[Lorg/chromium/url/mojom/Url;

.field public unusedPreloads:[Lorg/chromium/url/mojom/Url;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 11

    sget-object v0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->lcpElementLocators:[Lorg/chromium/mojo_base/mojom/ByteString;

    const/4 v1, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v9, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v9, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v10

    :goto_0
    iget-object v3, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->lcpElementLocators:[Lorg/chromium/mojo_base/mojom/ByteString;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v9

    invoke-virtual {v0, v3, v4, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->lcpInfluencerScripts:[Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x10

    if-nez v0, :cond_2

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v7, v10

    :goto_2
    iget-object v2, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->lcpInfluencerScripts:[Lorg/chromium/url/mojom/Url;

    array-length v3, v2

    if-ge v7, v3, :cond_3

    aget-object v5, v2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, v0

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v7

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->fetchedFonts:[Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x18

    if-nez v0, :cond_4

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v7, v10

    :goto_4
    iget-object v2, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->fetchedFonts:[Lorg/chromium/url/mojom/Url;

    array-length v3, v2

    if-ge v7, v3, :cond_5

    aget-object v5, v2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, v0

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v7

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->preconnectOrigins:[Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x20

    if-nez v0, :cond_6

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v7, v10

    :goto_6
    iget-object v2, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->preconnectOrigins:[Lorg/chromium/url/mojom/Url;

    array-length v3, v2

    if-ge v7, v3, :cond_7

    aget-object v5, v2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, v0

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v7

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->unusedPreloads:[Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x28

    if-nez v0, :cond_8

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v7, v10

    :goto_8
    iget-object v0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;->unusedPreloads:[Lorg/chromium/url/mojom/Url;

    array-length v1, v0

    if-ge v7, v1, :cond_9

    aget-object v5, v0, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, p1

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v7

    goto :goto_8

    :cond_9
    :goto_9
    return-void
.end method
