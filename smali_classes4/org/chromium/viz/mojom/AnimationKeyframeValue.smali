.class public final Lorg/chromium/viz/mojom/AnimationKeyframeValue;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/AnimationKeyframeValue$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mColor:Lorg/chromium/skia/mojom/SkColor;

.field private mRect:Lorg/chromium/gfx/mojom/Rect;

.field private mScalar:F

.field private mSize:Lorg/chromium/gfx/mojom/SizeF;

.field private mTransform:[Lorg/chromium/viz/mojom/TransformOperation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/viz/mojom/AnimationKeyframeValue;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/viz/mojom/AnimationKeyframeValue;

    invoke-direct {v1}, Lorg/chromium/viz/mojom/AnimationKeyframeValue;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/viz/mojom/TransformOperation;

    iput-object v0, v1, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mTransform:[Lorg/chromium/viz/mojom/TransformOperation;

    :goto_0
    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v2, v0, :cond_2

    iget-object v0, v1, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mTransform:[Lorg/chromium/viz/mojom/TransformOperation;

    mul-int/lit8 v4, v2, 0x10

    add-int/lit8 v4, v4, 0x8

    invoke-static {p0, v4}, Lorg/chromium/viz/mojom/TransformOperation;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/viz/mojom/TransformOperation;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mRect:Lorg/chromium/gfx/mojom/Rect;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/gfx/mojom/SizeF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/SizeF;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mSize:Lorg/chromium/gfx/mojom/SizeF;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/skia/mojom/SkColor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mColor:Lorg/chromium/skia/mojom/SkColor;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :cond_6
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result p0

    iput p0, v1, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mScalar:F

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

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

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mTransform:[Lorg/chromium/viz/mojom/TransformOperation;

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_1
    array-length v0, v0

    add-int/lit8 p2, p2, 0x8

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeUnionArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move p2, v2

    :goto_0
    iget-object v0, p0, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mTransform:[Lorg/chromium/viz/mojom/TransformOperation;

    array-length v1, v0

    if-ge p2, v1, :cond_6

    aget-object v0, v0, p2

    mul-int/lit8 v1, p2, 0x10

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mRect:Lorg/chromium/gfx/mojom/Rect;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mSize:Lorg/chromium/gfx/mojom/SizeF;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mColor:Lorg/chromium/skia/mojom/SkColor;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_1

    :cond_5
    iget p0, p0, Lorg/chromium/viz/mojom/AnimationKeyframeValue;->mScalar:F

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    :cond_6
    :goto_1
    return-void
.end method
