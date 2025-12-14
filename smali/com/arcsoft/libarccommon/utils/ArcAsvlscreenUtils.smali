.class public Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArcSoft_ArcAsvlscreenUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ArcAsvlScreenAlloc(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v1, 0x105

    if-eq v0, v1, :cond_3

    const/16 v1, 0x201

    if-eq v0, v1, :cond_3

    const/16 v1, 0x204

    if-eq v0, v1, :cond_3

    const/16 v1, 0x601

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc02

    if-eq v0, v1, :cond_3

    const/16 v1, 0x801

    if-eq v0, v1, :cond_1

    const/16 v1, 0x802

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf01

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf02

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    goto :goto_0

    :cond_3
    :pswitch_0
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ArcAsvlScreenCopy(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;

    invoke-direct {v1}, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;-><init>()V

    invoke-virtual {p0}, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static ArcAsvlScreenFree(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    iput-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane3:[B

    :cond_0
    return-void
.end method

.method public static buildAsvlscreenToBitmap(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;->TAG:Ljava/lang/String;

    const-string v1, "ERROR! res: 2"

    invoke-static {p0, v1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v4, 0x105

    if-eq v3, v4, :cond_3

    const/16 v4, 0x305

    if-eq v3, v4, :cond_2

    const/16 v4, 0x701

    if-eq v3, v4, :cond_1

    sget-object v1, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;->TAG:Ljava/lang/String;

    const-string v2, "unsupport bitmap format ..."

    invoke-static {v1, v2}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    :cond_4
    return-object v0
.end method

.method public static buildBitmapToAsvlscreen(Landroid/graphics/Bitmap;Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)V
    .locals 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    iput v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    iput v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch1:I

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch2:I

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch3:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    sget-object v0, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;->TAG:Ljava/lang/String;

    const-string v3, "unsupport bitmap format ..."

    invoke-static {v0, v3}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x701

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x105

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x305

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    :goto_0
    mul-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane3:[B

    return-void

    :cond_4
    :goto_1
    sget-object p0, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;->TAG:Ljava/lang/String;

    const-string p1, "ERROR! res: 2"

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static buildImageToAsvlscreen(Landroid/media/Image;Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)V
    .locals 12

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_e

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    const v3, 0x44363159

    if-eq v2, v3, :cond_e

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v6, 0x3

    if-ge v3, v6, :cond_1

    return-void

    :cond_1
    aget-object v3, v2, v5

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    const/4 v7, 0x2

    aget-object v8, v2, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    if-ne v4, v8, :cond_8

    aget-object v8, v2, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, v2, v7

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    aget-object v2, v2, v7

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    if-eqz v6, :cond_12

    if-eqz v8, :cond_12

    if-eqz v9, :cond_12

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    mul-int v10, v3, p0

    mul-int v11, v4, p0

    div-int/2addr v11, v7

    mul-int/2addr p0, v2

    div-int/2addr p0, v7

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    iput v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const/16 v0, 0x601

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    iput v3, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iput v4, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch1:I

    iput v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch2:I

    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eq v0, v10, :cond_3

    :cond_2
    new-array v0, v10, [B

    iput-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    :cond_3
    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v6, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    if-eqz v0, :cond_4

    array-length v0, v0

    if-eq v0, v11, :cond_5

    :cond_4
    new-array v0, v11, [B

    iput-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    :cond_5
    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    if-eqz v0, :cond_6

    array-length v0, v0

    if-eq v0, p0, :cond_7

    :cond_6
    new-array p0, p0, [B

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    :cond_7
    iget-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {v9, p0, v5, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :cond_8
    if-ne v7, v8, :cond_d

    aget-object v8, v2, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    aget-object v8, v2, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    aget-object v2, v2, v7

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    if-eqz v6, :cond_12

    if-eqz v8, :cond_12

    mul-int v4, v3, p0

    mul-int/2addr p0, v2

    div-int/2addr p0, v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    iput v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const/16 v0, 0x802

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    iput v3, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iput v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch1:I

    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    if-eqz v0, :cond_9

    array-length v0, v0

    if-eq v0, v4, :cond_a

    :cond_9
    new-array v0, v4, [B

    iput-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    :cond_a
    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v6, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    if-eqz v0, :cond_b

    array-length v0, v0

    if-eq v0, p0, :cond_c

    :cond_b
    new-array p0, p0, [B

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    :cond_c
    iget-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {v8, p0, v5, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_d
    sget-object p0, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;->TAG:Ljava/lang/String;

    const-string p1, "unsupport image format 1 ..."

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    if-eqz p0, :cond_f

    array-length v2, p0

    if-ge v2, v4, :cond_f

    return-void

    :cond_f
    aget-object v2, p0, v5

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    aget-object p0, p0, v5

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    iput v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const/16 v0, 0xc02

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    iput v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v2, v1

    iget-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    if-eqz v0, :cond_10

    array-length v0, v0

    if-eq v0, v2, :cond_11

    :cond_10
    new-array v0, v2, [B

    iput-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    :cond_11
    iget-object p1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_12
    :goto_0
    return-void
.end method

.method public static buildImageToAsvlscreen2(Landroid/media/Image;Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)V
    .locals 8

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    const v3, 0x44363159

    if-eq v2, v3, :cond_4

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v6, 0x3

    if-ge v3, v6, :cond_1

    return-void

    :cond_1
    aget-object v3, v2, v4

    aget-object v6, v2, v5

    const/4 v6, 0x2

    aget-object v7, v2, v6

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    aget-object p0, v2, v4

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    aget-object v4, v2, v6

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    if-ne v5, v4, :cond_2

    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    if-eqz p0, :cond_6

    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    iput v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const/16 v0, 0x601

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    iput v3, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iput v5, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch1:I

    iput v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch2:I

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    iput-object v4, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    iput-object v7, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    if-ne v6, v4, :cond_3

    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    aget-object v4, v2, v6

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    if-eqz p0, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    iput v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const/16 v0, 0x802

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    iput v3, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iput v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch1:I

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    iput-object v4, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;->TAG:Ljava/lang/String;

    const-string p1, "unsupport image format 2..."

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v2, p0

    if-ge v2, v5, :cond_5

    return-void

    :cond_5
    aget-object v2, p0, v4

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    aget-object p0, p0, v4

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    iput v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const/16 v0, 0xc02

    iput v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    iput v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    :cond_6
    :goto_0
    return-void
.end method

.method public static dumpAsvlscreen(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v1, 0x105

    const-string v2, "x"

    const-string v3, "_"

    if-eq v0, v1, :cond_9

    const/16 v1, 0x201

    if-eq v0, v1, :cond_8

    const/16 v1, 0x204

    if-eq v0, v1, :cond_8

    const/16 v1, 0x601

    if-eq v0, v1, :cond_7

    const/16 v1, 0x701

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc02

    if-eq v0, v1, :cond_5

    const/16 v1, 0x801

    if-eq v0, v1, :cond_4

    const/16 v1, 0x802

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf01

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf02

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".RGB32"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".P010"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".NV21"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".NV12"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".RAW"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".GRAY"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".I420"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".RGB24"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".RGB565"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p3}, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;->dumpAsvlscreen(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;Ljava/lang/String;Z)V

    :cond_a
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static dumpAsvlscreen(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;Ljava/lang/String;Z)V
    .locals 5

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v0, 0x105

    const/4 v1, 0x0

    if-eq p2, v0, :cond_7

    const/16 v0, 0x201

    if-eq p2, v0, :cond_5

    const/16 v0, 0x204

    if-eq p2, v0, :cond_5

    const/16 v0, 0x601

    if-eq p2, v0, :cond_4

    const/16 v0, 0x701

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc02

    if-eq p2, v0, :cond_3

    const/16 v0, 0x801

    if-eq p2, v0, :cond_2

    const/16 v0, 0x802

    if-eq p2, v0, :cond_2

    const/16 v0, 0xf01

    if-eq p2, v0, :cond_2

    const/16 v0, 0xf02

    if-eq p2, v0, :cond_2

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x4

    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr p2, v0

    new-array p2, p2, [B

    :goto_0
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int v4, v1, v3

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v0, v2, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_5
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x3

    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr p2, v0

    new-array p2, p2, [B

    :goto_1
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int v4, v1, v3

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v0, v2, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_7
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr p2, v0

    new-array p2, p2, [B

    :goto_2
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int v4, v1, v3

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    :goto_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static dumpAsvlscreenWithoutExtraPitch(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v1, 0x105

    const-string v2, "x"

    const-string v3, "_"

    if-eq v0, v1, :cond_9

    const/16 v1, 0x201

    if-eq v0, v1, :cond_8

    const/16 v1, 0x204

    if-eq v0, v1, :cond_8

    const/16 v1, 0x601

    if-eq v0, v1, :cond_7

    const/16 v1, 0x701

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc02

    if-eq v0, v1, :cond_5

    const/16 v1, 0x801

    if-eq v0, v1, :cond_4

    const/16 v1, 0x802

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf01

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf02

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".RGB32"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".P010"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".NV21"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".NV12"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".RAW"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".GRAY"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".I420"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".RGB24"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    const-string v0, ".RGB565"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p3}, Lcom/arcsoft/libarccommon/utils/ArcAsvlscreenUtils;->dumpAsvlscreenWithoutExtraPitch(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;Ljava/lang/String;Z)V

    :cond_a
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static dumpAsvlscreenWithoutExtraPitch(Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;Ljava/lang/String;Z)V
    .locals 5

    if-eqz p0, :cond_10

    if-nez p1, :cond_0

    goto/16 :goto_f

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v0, 0x105

    const/4 v1, 0x0

    if-eq p2, v0, :cond_d

    const/16 v0, 0x201

    if-eq p2, v0, :cond_b

    const/16 v0, 0x204

    if-eq p2, v0, :cond_b

    const/16 v0, 0x601

    if-eq p2, v0, :cond_8

    const/16 v0, 0x701

    if-eq p2, v0, :cond_7

    const/16 v0, 0xc02

    if-eq p2, v0, :cond_6

    const/16 v0, 0x801

    if-eq p2, v0, :cond_4

    const/16 v0, 0x802

    if-eq p2, v0, :cond_4

    const/16 v0, 0xf01

    if-eq p2, v0, :cond_2

    const/16 v0, 0xf02

    if-eq p2, v0, :cond_2

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x4

    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, p2

    new-array v0, v0, [B

    :goto_0
    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v3, v1

    mul-int v4, v1, p2

    invoke-static {v2, v3, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_d

    :catch_1
    move-exception p0

    goto/16 :goto_e

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_c

    :cond_2
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x2

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v3, v0

    invoke-virtual {p1, v2, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch1:I

    mul-int/2addr v2, v1

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    move v0, v1

    :goto_3
    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v3, v0

    invoke-virtual {p1, v2, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch1:I

    mul-int/2addr v2, v1

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x2

    :goto_5
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v2, v1

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    :goto_6
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v2, v1

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    move v0, v1

    :goto_7
    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v3, v0

    invoke-virtual {p1, v2, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    move v0, v1

    :goto_8
    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch1:I

    mul-int/2addr v3, v0

    div-int/lit8 v4, p2, 0x2

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch2:I

    mul-int/2addr v2, v1

    div-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x3

    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, p2

    new-array v0, v0, [B

    :goto_a
    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v3, v1

    mul-int v4, v1, p2

    invoke-static {v2, v3, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_c

    :cond_d
    iget p2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Width:I

    mul-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, p2

    new-array v0, v0, [B

    :goto_b
    iget v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    if-ge v1, v2, :cond_e

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    mul-int/2addr v3, v1

    mul-int v4, v1, p2

    invoke-static {v2, v3, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_e
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    :cond_f
    :goto_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInfoFromAsvlName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "\\d+(?:\\.\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    return-object v0
.end method

.method public static readAsvlscreenFromFile(Ljava/lang/String;Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    iget v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v1, 0x105

    if-eq v0, v1, :cond_5

    const/16 v1, 0x201

    if-eq v0, v1, :cond_5

    const/16 v1, 0x204

    if-eq v0, v1, :cond_5

    const/16 v1, 0x601

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x701

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc02

    if-eq v0, v1, :cond_5

    const/16 v1, 0x801

    if-eq v0, v1, :cond_3

    const/16 v1, 0x802

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf01

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf02

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x4

    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    goto :goto_1

    :cond_5
    :pswitch_0
    iput-object p0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static readAsvlscreenFromFile2(Ljava/lang/String;Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v1, 0x105

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x201

    if-eq v0, v1, :cond_5

    const/16 v1, 0x204

    if-eq v0, v1, :cond_5

    const/16 v1, 0x601

    if-eq v0, v1, :cond_4

    const/16 v1, 0x701

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc02

    if-eq v0, v1, :cond_5

    const/16 v1, 0x801

    if-eq v0, v1, :cond_3

    const/16 v1, 0x802

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf01

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf02

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    div-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    div-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    div-int/lit8 v2, v0, 0x4

    add-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    goto :goto_1

    :cond_5
    :pswitch_0
    iget v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v0, p1, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static readAsvlscreenFromHugeFile(Ljava/lang/String;JLcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    return-void

    :cond_2
    const-wide/16 v1, 0x0

    cmp-long p0, v1, p1

    if-lez p0, :cond_3

    return-void

    :cond_3
    :try_start_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v0, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PixelFormat:I

    const/16 v1, 0x105

    if-eq v0, v1, :cond_6

    const/16 v1, 0x201

    if-eq v0, v1, :cond_6

    const/16 v1, 0x204

    if-eq v0, v1, :cond_6

    const/16 v1, 0x601

    if-eq v0, v1, :cond_5

    const/16 v1, 0x701

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc02

    if-eq v0, v1, :cond_6

    const/16 v1, 0x801

    if-eq v0, v1, :cond_4

    const/16 v1, 0x802

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf01

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf02

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :cond_4
    iget v0, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    mul-long/2addr p1, v2

    new-array v2, v0, [B

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v2, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    new-array v1, v1, [B

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v1, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_5
    iget v0, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x4

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    mul-long/2addr p1, v2

    new-array v2, v0, [B

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v2, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    new-array v2, v1, [B

    int-to-long v3, v0

    add-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v2, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    new-array v0, v1, [B

    int-to-long v1, v1

    add-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v0, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    goto :goto_1

    :cond_6
    :pswitch_0
    iget v0, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Pitch0:I

    iget v1, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Height:I

    mul-int/2addr v0, v1

    int-to-long v1, v0

    mul-long/2addr p1, v1

    new-array v0, v0, [B

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iput-object v0, p3, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
