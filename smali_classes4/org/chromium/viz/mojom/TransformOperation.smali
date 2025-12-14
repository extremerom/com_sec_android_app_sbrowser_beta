.class public final Lorg/chromium/viz/mojom/TransformOperation;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/TransformOperation$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIdentity:Z

.field private mMatrix:Lorg/chromium/gfx/mojom/Transform;

.field private mPerspectiveDepth:F

.field private mRotate:Lorg/chromium/viz/mojom/AxisAngle;

.field private mScale:Lorg/chromium/gfx/mojom/Vector3dF;

.field private mSkew:Lorg/chromium/gfx/mojom/Vector2dF;

.field private mTranslate:Lorg/chromium/gfx/mojom/Vector3dF;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/viz/mojom/TransformOperation;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/viz/mojom/TransformOperation;

    invoke-direct {v1}, Lorg/chromium/viz/mojom/TransformOperation;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/gfx/mojom/Transform;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Transform;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/viz/mojom/TransformOperation;->mMatrix:Lorg/chromium/gfx/mojom/Transform;

    const/4 p0, 0x6

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/viz/mojom/AxisAngle;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/AxisAngle;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/viz/mojom/TransformOperation;->mRotate:Lorg/chromium/viz/mojom/AxisAngle;

    const/4 p0, 0x5

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_2
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/gfx/mojom/Vector3dF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Vector3dF;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/viz/mojom/TransformOperation;->mTranslate:Lorg/chromium/gfx/mojom/Vector3dF;

    const/4 p0, 0x4

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_3
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/gfx/mojom/Vector3dF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Vector3dF;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/viz/mojom/TransformOperation;->mScale:Lorg/chromium/gfx/mojom/Vector3dF;

    const/4 p0, 0x3

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_4
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/gfx/mojom/Vector2dF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Vector2dF;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/viz/mojom/TransformOperation;->mSkew:Lorg/chromium/gfx/mojom/Vector2dF;

    const/4 p0, 0x2

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_5
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result p0

    iput p0, v1, Lorg/chromium/viz/mojom/TransformOperation;->mPerspectiveDepth:F

    const/4 p0, 0x1

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_6
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result p0

    iput-boolean p0, v1, Lorg/chromium/viz/mojom/TransformOperation;->mIdentity:Z

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lorg/chromium/viz/mojom/TransformOperation;->mMatrix:Lorg/chromium/gfx/mojom/Transform;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lorg/chromium/viz/mojom/TransformOperation;->mRotate:Lorg/chromium/viz/mojom/AxisAngle;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lorg/chromium/viz/mojom/TransformOperation;->mTranslate:Lorg/chromium/gfx/mojom/Vector3dF;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lorg/chromium/viz/mojom/TransformOperation;->mScale:Lorg/chromium/gfx/mojom/Vector3dF;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lorg/chromium/viz/mojom/TransformOperation;->mSkew:Lorg/chromium/gfx/mojom/Vector2dF;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_5
    iget p0, p0, Lorg/chromium/viz/mojom/TransformOperation;->mPerspectiveDepth:F

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    goto :goto_0

    :pswitch_6
    iget-boolean p0, p0, Lorg/chromium/viz/mojom/TransformOperation;->mIdentity:Z

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
