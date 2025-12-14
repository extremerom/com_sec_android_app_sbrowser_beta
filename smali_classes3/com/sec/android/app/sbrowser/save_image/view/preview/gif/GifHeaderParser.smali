.class public Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBlock:[B

.field private mBlockSize:I

.field private mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

.field private mRawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlock:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlockSize:I

    return-void
.end method

.method private err()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getStatus()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setStatus(I)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readBitmap()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setX(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setY(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setWidth(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setHeight(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v4, v0, 0x7

    add-int/2addr v4, v3

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v5

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setIsInterlaced(Z)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setLCT([I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setLCT([I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setBufferFrameStart(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->skipImageData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->increaseFrameCount()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrames()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBlock()I
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlockSize:I

    if-ge v1, v0, :cond_0

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlock:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setStatus(I)V

    :cond_0
    return v1
.end method

.method private readColorTable(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v7

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setStatus(I)V

    :cond_0
    return-object v1
.end method

.method private readContents()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readContents(I)V

    return-void
.end method

.method private readContents(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->err()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrameCount()I

    move-result v2

    if-gt v2, p1, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setStatus(I)V

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setCurrentFrame(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readBitmap()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->skip()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readBlock()I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlock:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readNetscapeExt()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->skip()V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->skip()V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setCurrentFrame(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readGraphicControlExt()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->skip()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private readGraphicControlExt()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v1

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setDispose(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->getDispose()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setDispose(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setHasTransparency(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readShort()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v2

    mul-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setDelay(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;->setTransIndex(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    return-void
.end method

.method private readHeader()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setStatus(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readLSD()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->hasGCT()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getGCTSize()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setGCT([I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getGCT()[I

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getBackgroundIndex()I

    move-result p0

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private readLSD()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setWidth(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setHeight(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setHasGCT(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x2

    shl-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setGCTSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setBackgroundIndex(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setPixelAspect(I)V

    return-void
.end method

.method private readNetscapeExt()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readBlock()I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlock:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setLoopCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getLoopCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setLoopCount(I)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlockSize:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlock:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    iput v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mBlockSize:I

    return-void
.end method

.method private skip()V
    .locals 3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_0

    :catch_0
    return-void
.end method

.method private skipImageData()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->read()I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->skip()V

    return-void
.end method


# virtual methods
.method public parseHeader()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readHeader()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->readContents()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->getFrameCount()I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setStatus(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setData() before parseHeader()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setData(Ljava/nio/ByteBuffer;)Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->reset()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setData([B)Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->setData(Ljava/nio/ByteBuffer;)Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mRawData:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeaderParser;->mGifHeader:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->setStatus(I)V

    :goto_0
    return-object p0
.end method
