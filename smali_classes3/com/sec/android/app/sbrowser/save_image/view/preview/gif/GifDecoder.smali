.class public Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;
    }
.end annotation


# instance fields
.field private mACT:[I

.field private mBitmapProvider:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;

.field private mBlock:[B

.field private mDownSampledHeight:I

.field private mDownSampledWidth:I

.field private mFramePointer:I

.field private mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

.field private mGifHeaderParser:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;

.field private mIsFirstFrameTransparent:Z

.field private mLoopIndex:I

.field private mMainPixels:[B

.field private mMainScratch:[I

.field private final mPCT:[I

.field private mPixelStack:[B

.field private mPrefix:[S

.field private mPrevImageBitmap:Landroid/graphics/Bitmap;

.field private mRawData:Ljava/nio/ByteBuffer;

.field private mSampleSize:I

.field private mSavePrevious:Z

.field private mStatus:I

.field private mSuffix:[B

.field private mWorkBuffer:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mWorkBufferPosition:I

.field private mWorkBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/SimpleBitmapProvider;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/SimpleBitmapProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPCT:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferSize:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBitmapProvider:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    return-void
.end method

.method private averageColorsNear(III)I
    .locals 9

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget v7, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainPixels:[B

    array-length v8, v7

    if-ge v1, v8, :cond_1

    if-ge v1, p2, :cond_1

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mACT:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p3

    move p3, p1

    :goto_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainPixels:[B

    array-length v7, v1

    if-ge p3, v7, :cond_3

    if-ge p3, p2, :cond_3

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mACT:[I

    aget v1, v7, v1

    if-eqz v1, :cond_2

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    return v0

    :cond_4
    div-int/2addr v2, v6

    shl-int/lit8 p0, v2, 0x18

    div-int/2addr v3, v6

    shl-int/lit8 p1, v3, 0x10

    or-int/2addr p0, p1

    div-int/2addr v4, v6

    shl-int/lit8 p1, v4, 0x8

    or-int/2addr p0, p1

    div-int/2addr v5, v6

    or-int/2addr p0, v5

    return p0
.end method

.method private decodeBitmapData(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferSize:I

    iput v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getBufferFrameStart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getHeight()I

    move-result v3

    :goto_0
    mul-int/2addr v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getHeight()I

    move-result v3

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainPixels:[B

    if-eqz v2, :cond_2

    array-length v2, v2

    if-ge v2, v3, :cond_3

    :cond_2
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBitmapProvider:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainPixels:[B

    :cond_3
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrefix:[S

    const/16 v4, 0x1000

    if-nez v2, :cond_4

    new-array v2, v4, [S

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrefix:[S

    :cond_4
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSuffix:[B

    if-nez v2, :cond_5

    new-array v2, v4, [B

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSuffix:[B

    :cond_5
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPixelStack:[B

    if-nez v2, :cond_6

    const/16 v2, 0x1001

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPixelStack:[B

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->readByte()I

    move-result v2

    const/4 v5, 0x1

    shl-int v6, v5, v2

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    add-int/2addr v2, v5

    shl-int v9, v5, v2

    sub-int/2addr v9, v5

    move v10, v1

    :goto_2
    if-ge v10, v6, :cond_7

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrefix:[S

    aput-short v1, v11, v10

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSuffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, -0x1

    move v11, v1

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v21, v16

    move/from16 v22, v21

    move/from16 v19, v2

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    :goto_3
    if-ge v11, v3, :cond_15

    const/4 v1, 0x3

    if-nez v12, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->readBlock()I

    move-result v12

    if-gtz v12, :cond_8

    iput v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I

    goto/16 :goto_9

    :cond_8
    const/4 v13, 0x0

    :cond_9
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBlock:[B

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    add-int/2addr v15, v4

    add-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v5

    add-int/2addr v12, v10

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v23, v20

    move/from16 v24, v21

    :goto_4
    if-lt v14, v5, :cond_14

    and-int v10, v15, v18

    shr-int/2addr v15, v5

    sub-int/2addr v14, v5

    if-ne v10, v6, :cond_a

    move v5, v2

    move v4, v8

    move/from16 v18, v9

    const/4 v10, -0x1

    const/16 v23, -0x1

    goto :goto_4

    :cond_a
    if-le v10, v4, :cond_b

    iput v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I

    goto :goto_5

    :cond_b
    if-ne v10, v7, :cond_c

    :goto_5
    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v20, v23

    move/from16 v21, v24

    const/4 v1, 0x0

    const/16 v4, 0x1000

    const/4 v5, 0x1

    const/4 v10, -0x1

    goto :goto_3

    :cond_c
    move/from16 v19, v2

    move/from16 v1, v23

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPixelStack:[B

    add-int/lit8 v21, v22, 0x1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSuffix:[B

    aget-byte v2, v2, v10

    aput-byte v2, v1, v22

    move/from16 v23, v10

    move/from16 v24, v23

    move/from16 v2, v19

    move/from16 v22, v21

    const/4 v1, 0x3

    const/4 v10, -0x1

    goto :goto_4

    :cond_d
    if-lt v10, v4, :cond_e

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v25, v7

    move/from16 v7, v24

    int-to-byte v7, v7

    aput-byte v7, v2, v22

    move v2, v1

    move/from16 v22, v21

    goto :goto_6

    :cond_e
    move/from16 v25, v7

    move v2, v10

    :goto_6
    if-lt v2, v6, :cond_f

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v24, v6

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSuffix:[B

    aget-byte v6, v6, v2

    aput-byte v6, v7, v22

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrefix:[S

    aget-short v2, v6, v2

    move/from16 v22, v21

    move/from16 v6, v24

    goto :goto_6

    :cond_f
    move/from16 v24, v6

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSuffix:[B

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v26, v8

    int-to-byte v8, v2

    aput-byte v8, v7, v22

    const/16 v7, 0x1000

    if-ge v4, v7, :cond_11

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrefix:[S

    int-to-short v1, v1

    aput-short v1, v7, v4

    aput-byte v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    and-int v1, v4, v18

    if-nez v1, :cond_10

    const/16 v1, 0x1000

    if-ge v4, v1, :cond_12

    add-int/lit8 v5, v5, 0x1

    add-int v18, v18, v4

    goto :goto_7

    :cond_10
    const/16 v1, 0x1000

    goto :goto_7

    :cond_11
    move v1, v7

    :cond_12
    :goto_7
    move/from16 v22, v21

    :goto_8
    if-lez v22, :cond_13

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainPixels:[B

    add-int/lit8 v7, v16, 0x1

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPixelStack:[B

    add-int/lit8 v22, v22, -0x1

    aget-byte v8, v8, v22

    aput-byte v8, v6, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v7

    goto :goto_8

    :cond_13
    move/from16 v23, v10

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    const/4 v1, 0x3

    const/4 v10, -0x1

    move/from16 v24, v2

    move/from16 v2, v19

    goto/16 :goto_4

    :cond_14
    move/from16 v25, v7

    move/from16 v1, v23

    move/from16 v7, v24

    move/from16 v20, v1

    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v21, v7

    move/from16 v7, v25

    const/4 v1, 0x0

    const/16 v4, 0x1000

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_15
    :goto_9
    move/from16 v1, v16

    :goto_a
    if-ge v1, v3, :cond_16

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainPixels:[B

    const/4 v4, 0x0

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method private fillRect([ILcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;I)V
    .locals 4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getY()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int/2addr v2, v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getX()I

    move-result p2

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int/2addr p2, v3

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    mul-int/2addr v1, v3

    add-int/2addr v1, p2

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_1

    add-int p2, v1, v2

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_0

    aput p3, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getHeaderParser()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeaderParser:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeaderParser:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeaderParser:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;

    return-object p0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mIsFirstFrameTransparent:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBitmapProvider:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledHeight:I

    invoke-interface {v1, v2, p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private readBlock()I
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->readByte()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBlock:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBitmapProvider:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;

    const/16 v3, 0xff

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBlock:[B

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferSize:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lt v2, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBuffer:[B

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBlock:[B

    invoke-static {v2, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v3, v0, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBuffer:[B

    if-eqz v3, :cond_3

    iget v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBlock:[B

    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferSize:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->readChunkIfNeeded()V

    sub-int v3, v0, v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBuffer:[B

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBlock:[B

    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    goto :goto_2

    :cond_4
    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v3, "GifDecoder"

    const-string v4, "Error Reading Block"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I

    :cond_5
    :goto_2
    return v0
.end method

.method private readByte()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->readChunkIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBuffer:[B

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    aget-byte p0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, p0, 0xff

    :cond_0
    return v0

    :catch_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I

    return v0
.end method

.method private readChunkIfNeeded()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferSize:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBuffer:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBitmapProvider:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBuffer:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferPosition:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBufferSize:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mRawData:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mWorkBuffer:[B

    invoke-virtual {v2, p0, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-void
.end method

.method private setPixels(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainScratch:[I

    const/4 v10, 0x0

    if-nez v1, :cond_0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getDispose()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getDispose()I

    move-result v2

    if-ne v2, v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->hasTransparency()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getBackgroundColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getLCT()[I

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getBackgroundIndex()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getTransIndex()I

    move-result v4

    if-ne v3, v4, :cond_3

    :cond_1
    :goto_0
    move v2, v10

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    if-nez v2, :cond_1

    iput-boolean v13, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mIsFirstFrameTransparent:Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {v0, v9, v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->fillRect([ILcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;I)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getDispose()I

    move-result v2

    if-ne v2, v11, :cond_6

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrevImageBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    invoke-direct {v0, v9, v1, v10}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->fillRect([ILcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;I)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getHeight()I

    move-result v2

    iget v3, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int v8, v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getY()I

    move-result v2

    iget v3, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int v6, v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int v7, v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getX()I

    move-result v1

    iget v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int v5, v1, v2

    iget v4, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    mul-int v1, v6, v4

    add-int v3, v1, v5

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrevImageBitmap:Landroid/graphics/Bitmap;

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->decodeBitmapData(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getY()I

    move-result v2

    iget v3, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getWidth()I

    move-result v3

    iget v4, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getX()I

    move-result v4

    iget v5, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    div-int/2addr v4, v5

    iget v5, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    if-nez v5, :cond_7

    move v5, v13

    goto :goto_3

    :cond_7
    move v5, v10

    :goto_3
    const/16 v6, 0x8

    move v7, v10

    move v8, v13

    :goto_4
    if-ge v10, v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->isInterlaced()Z

    move-result v14

    if-eqz v14, :cond_c

    if-lt v7, v1, :cond_b

    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x4

    if-eq v8, v12, :cond_a

    if-eq v8, v11, :cond_9

    if-eq v8, v14, :cond_8

    goto :goto_5

    :cond_8
    move v6, v12

    move v7, v13

    goto :goto_5

    :cond_9
    move v7, v12

    move v6, v14

    goto :goto_5

    :cond_a
    move v7, v14

    :cond_b
    :goto_5
    add-int v14, v7, v6

    goto :goto_6

    :cond_c
    move v14, v7

    move v7, v10

    :goto_6
    add-int/2addr v7, v2

    iget v15, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledHeight:I

    if-ge v7, v15, :cond_11

    iget v15, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    mul-int/2addr v7, v15

    add-int v16, v7, v4

    add-int v11, v16, v3

    add-int v12, v7, v15

    if-ge v12, v11, :cond_d

    add-int v11, v7, v15

    :cond_d
    iget v7, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    mul-int/2addr v7, v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getWidth()I

    move-result v12

    mul-int/2addr v12, v7

    sub-int v7, v11, v16

    iget v15, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    mul-int/2addr v7, v15

    add-int/2addr v7, v12

    move/from16 v15, v16

    :goto_7
    if-ge v15, v11, :cond_11

    move/from16 p2, v1

    iget v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    if-ne v1, v13, :cond_e

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainPixels:[B

    aget-byte v1, v1, v12

    and-int/lit16 v1, v1, 0xff

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mACT:[I

    aget v1, v13, v1

    goto :goto_8

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getWidth()I

    move-result v1

    invoke-direct {v0, v12, v7, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->averageColorsNear(III)I

    move-result v1

    :goto_8
    if-eqz v1, :cond_f

    aput v1, v9, v15

    goto :goto_9

    :cond_f
    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mIsFirstFrameTransparent:Z

    if-nez v1, :cond_10

    if-eqz v5, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mIsFirstFrameTransparent:Z

    :cond_10
    :goto_9
    iget v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    add-int/2addr v12, v1

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p2

    const/4 v13, 0x1

    goto :goto_7

    :cond_11
    move/from16 p2, v1

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p2

    move v7, v14

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_4

    :cond_12
    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSavePrevious:Z

    if-eqz v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getDispose()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getDispose()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    :cond_13
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrevImageBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrevImageBitmap:Landroid/graphics/Bitmap;

    :cond_14
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPrevImageBitmap:Landroid/graphics/Bitmap;

    iget v7, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    const/4 v6, 0x0

    iget v8, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledHeight:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    iget v6, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    const/4 v5, 0x0

    iget v7, v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledHeight:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, v9

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8
.end method


# virtual methods
.method public advance()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrameCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getFrameCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mLoopIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mLoopIndex:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getLoopCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mLoopIndex:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getLoopCount()I

    move-result v2

    if-le v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrameCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    return v3
.end method

.method public getCurrentFrameIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    return p0
.end method

.method public getDelay(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrameCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getDelay()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getFrameCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrameCount()I

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getHeight()I

    move-result p0

    return p0
.end method

.method public getNextDelay()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrameCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getDelay(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "No Valid Color Table for frame #"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrameCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    if-gez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrames()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    iget v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    goto :goto_1

    :cond_3
    move-object v5, v3

    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getLCT()[I

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getLCT()[I

    move-result-object v6

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getGCT()[I

    move-result-object v6

    :goto_2
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mACT:[I

    if-nez v6, :cond_5

    const-string v1, "GifDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_5
    :try_start_1
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->hasTransparency()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mACT:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPCT:[I

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mPCT:[I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mACT:[I

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getTransIndex()I

    move-result v2

    aput v1, v0, v2

    :cond_6
    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->setPixels(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_7
    :goto_3
    monitor-exit p0

    return-object v3

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getWidth()I

    move-result p0

    return p0
.end method

.method public declared-synchronized read([B)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getHeaderParser()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->setData([B)Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->parseHeader()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->setData(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;[B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetLoopIndex()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mLoopIndex:I

    return-void
.end method

.method public declared-synchronized setData(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->setData(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setData(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 2

    const-string v0, "Sample size must be >=0, not: "

    monitor-enter p0

    if-lez p3, :cond_2

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mStatus:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mIsFirstFrameTransparent:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->resetLoopIndex()V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mRawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSavePrevious:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getDispose()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSavePrevious:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput p3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mSampleSize:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getWidth()I

    move-result p2

    div-int/2addr p2, p3

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getHeight()I

    move-result p2

    div-int/2addr p2, p3

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledHeight:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBitmapProvider:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getHeight()I

    move-result p1

    mul-int/2addr p3, p1

    invoke-interface {p2, p3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainPixels:[B

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mBitmapProvider:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;

    iget p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledWidth:I

    iget p3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mDownSampledHeight:I

    mul-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mMainScratch:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setData(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;[B)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->setData(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFrameIndex(I)Z
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getFrameCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->mFramePointer:I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
