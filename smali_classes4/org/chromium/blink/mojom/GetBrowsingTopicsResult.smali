.class public final Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/GetBrowsingTopicsResult$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBrowsingTopics:[Lorg/chromium/blink/mojom/EpochTopic;

.field private mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;
    .locals 7

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/blink/mojom/EpochTopic;

    iput-object v0, v1, Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;->mBrowsingTopics:[Lorg/chromium/blink/mojom/EpochTopic;

    move v0, v3

    :goto_0
    iget v5, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v5, :cond_2

    const/16 v5, 0x8

    invoke-static {v0, v5, v2, p0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    iget-object v6, v1, Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;->mBrowsingTopics:[Lorg/chromium/blink/mojom/EpochTopic;

    invoke-static {v5}, Lorg/chromium/blink/mojom/EpochTopic;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/EpochTopic;

    move-result-object v5

    aput-object v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v4, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :cond_3
    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;->mErrorMessage:Ljava/lang/String;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;->mBrowsingTopics:[Lorg/chromium/blink/mojom/EpochTopic;

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_1
    array-length v0, v0

    add-int/lit8 p2, p2, 0x8

    const/4 v2, -0x1

    invoke-virtual {p1, v0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move p2, v1

    :goto_0
    iget-object v0, p0, Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;->mBrowsingTopics:[Lorg/chromium/blink/mojom/EpochTopic;

    array-length v2, v0

    if-ge p2, v2, :cond_3

    aget-object v0, v0, p2

    mul-int/lit8 v2, p2, 0x8

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/blink/mojom/GetBrowsingTopicsResult;->mErrorMessage:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    :cond_3
    :goto_1
    return-void
.end method
