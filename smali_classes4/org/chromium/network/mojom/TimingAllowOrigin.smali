.class public final Lorg/chromium/network/mojom/TimingAllowOrigin;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TimingAllowOrigin$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAll:B

.field private mSerializedOrigins:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/TimingAllowOrigin;
    .locals 6

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/network/mojom/TimingAllowOrigin;

    invoke-direct {v1}, Lorg/chromium/network/mojom/TimingAllowOrigin;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result p0

    iput-byte p0, v1, Lorg/chromium/network/mojom/TimingAllowOrigin;->mAll:B

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :cond_2
    add-int/2addr p1, v2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget v3, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lorg/chromium/network/mojom/TimingAllowOrigin;->mSerializedOrigins:[Ljava/lang/String;

    move v3, v0

    :goto_0
    iget v4, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v3, v4, :cond_3

    iget-object v4, v1, Lorg/chromium/network/mojom/TimingAllowOrigin;->mSerializedOrigins:[Ljava/lang/String;

    const/16 v5, 0x8

    invoke-static {v3, v5, v2, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput v0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 10

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/16 v8, 0x8

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-byte p0, p0, Lorg/chromium/network/mojom/TimingAllowOrigin;->mAll:B

    add-int/2addr p2, v8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/chromium/network/mojom/TimingAllowOrigin;->mSerializedOrigins:[Ljava/lang/String;

    const/4 v9, 0x0

    if-nez v0, :cond_2

    add-int/2addr p2, v8

    invoke-virtual {p1, p2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_2
    array-length v0, v0

    add-int/2addr p2, v8

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v6, v9

    :goto_0
    iget-object p2, p0, Lorg/chromium/network/mojom/TimingAllowOrigin;->mSerializedOrigins:[Ljava/lang/String;

    array-length v0, p2

    if-ge v6, v0, :cond_3

    aget-object v4, p2, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, p1

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
