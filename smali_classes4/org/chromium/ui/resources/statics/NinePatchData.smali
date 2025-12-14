.class public Lorg/chromium/ui/resources/statics/NinePatchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mAperture:Landroid/graphics/Rect;

.field private final mDivX:[I

.field private final mDivY:[I

.field private final mHeight:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method private constructor <init>(IILandroid/graphics/Rect;[I[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mWidth:I

    iput p2, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mHeight:I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mPadding:Landroid/graphics/Rect;

    array-length p1, p4

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    array-length p2, p5

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    array-length p3, p4

    const/4 v0, 0x0

    invoke-static {p4, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p5

    invoke-static {p5, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p3, Landroid/graphics/Rect;

    aget p4, p1, v0

    aget p5, p2, v0

    const/4 v0, 0x1

    aget p1, p1, v0

    aget p2, p2, v0

    invoke-direct {p3, p4, p5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mAperture:Landroid/graphics/Rect;

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;)Lorg/chromium/ui/resources/statics/NinePatchData;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_7

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eqz v3, :cond_7

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    new-array v9, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-array v10, v3, [I

    :goto_1
    if-ge v4, v3, :cond_6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    new-instance v1, Lorg/chromium/ui/resources/statics/NinePatchData;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/chromium/ui/resources/statics/NinePatchData;-><init>(IILandroid/graphics/Rect;[I[I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_7
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getAperture()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mAperture:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mPadding:Landroid/graphics/Rect;

    return-object p0
.end method
