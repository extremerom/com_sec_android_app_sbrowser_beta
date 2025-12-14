.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngine;",
        "<init>",
        "()V",
        "barcodeDecoder",
        "Lcom/samsung/android/qrengine/QRBarcodeDecoder;",
        "process",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "isDecodeAvailable",
        "",
        "getBarcodeScanResult",
        "getQRBarcodeDecoder",
        "Companion",
        "deepsky-sdk-barcode-1.0.11_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final barcodeDecoder:Lcom/samsung/android/qrengine/QRBarcodeDecoder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;->Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    sget-object v1, LH8/a;->StillPhoto:LH8/a;

    sget-object v2, LH8/b;->Barcode_QR_DMC:LH8/b;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;-><init>(LH8/a;LH8/b;)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;->barcodeDecoder:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    return-void
.end method

.method private final getBarcodeScanResult(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;->getQRBarcodeDecoder(Landroid/graphics/Bitmap;)Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "SRCB/QRBarcodeDecoder"

    if-nez p1, :cond_0

    const-string v7, "Bitmap is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v6, -0x1

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    iget-object v14, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->f:[C

    invoke-static {v14, v4}, Ljava/util/Arrays;->fill([CC)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v13, v8, v7

    new-array v12, v13, [I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    move-object/from16 v7, p1

    move-object v8, v12

    move-object/from16 v22, v12

    move/from16 v12, v21

    move v6, v13

    move/from16 v13, v19

    move-object/from16 v23, v14

    move/from16 v14, v20

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "temp size :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bitmap size :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ImageUtil"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v13, v6, 0x3

    new-array v7, v13, [B

    move v8, v4

    :goto_1
    if-ge v8, v6, :cond_1

    aget v9, v22, v8

    const/high16 v10, 0xff0000

    and-int/2addr v10, v9

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/2addr v11, v2

    int-to-byte v11, v11

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    mul-int/lit8 v12, v8, 0x3

    aput-byte v10, v7, v12

    add-int/lit8 v10, v12, 0x1

    aput-byte v11, v7, v10

    add-int/2addr v12, v3

    aput-byte v9, v7, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v10, v6, v4

    iget-object v11, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->f:[C

    iget v12, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->barcodeRecognizeRGB([BII[I[CI)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "barcodeRecognizeRGB mResultRoi: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v8, v8, v4

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v9, v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v9, v9, v4

    aget v9, v9, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v9, v9, v4

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v9, v9, v4

    const/4 v10, 0x4

    aget v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v9, v9, v4

    const/4 v10, 0x5

    aget v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v9, v9, v4

    const/4 v10, 0x6

    aget v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object v8, v8, v4

    const/4 v9, 0x7

    aget v8, v8, v9

    invoke-static {v7, v8, v5}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->g:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v5, v4

    iget-object v5, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->h:[Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_0

    :cond_2
    move v5, v4

    :goto_2
    const/16 v7, 0x32

    move-object/from16 v8, v23

    if-ge v5, v7, :cond_4

    aget-char v9, v8, v5

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v23, v8

    goto :goto_2

    :cond_4
    :goto_3
    aget-char v9, v8, v4

    if-eqz v9, :cond_5

    if-ge v5, v7, :cond_5

    if-lez v5, :cond_5

    iget-object v7, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->h:[Ljava/lang/String;

    invoke-static {v8, v4, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    :cond_5
    iget-object v5, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->h:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->h:[Ljava/lang/String;

    const-string v6, "None"

    aput-object v6, v5, v4

    goto/16 :goto_0

    :cond_6
    iget-object v5, v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->g:[Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v15

    long-to-int v6, v5

    :goto_4
    invoke-virtual {v1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->a()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "process: result="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", getRecognizedObjectCount()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BarcodeEngineAdapter"

    invoke-static {v7, v5}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->a()I

    move-result v5

    :goto_5
    if-ge v4, v5, :cond_7

    new-instance v6, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->c(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%s:%s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [I

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;-><init>(Ljava/lang/String;[I)V

    invoke-virtual {v6}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;->getQrPositionArray()[I

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->b(I[I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e()V

    return-object v0
.end method

.method private final getQRBarcodeDecoder(Landroid/graphics/Bitmap;)Lcom/samsung/android/qrengine/QRBarcodeDecoder;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;->barcodeDecoder:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    move v2, v3

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    iget-object v4, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->c:[I

    aget v5, v1, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->b:I

    iput v1, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    const/16 v4, 0x190

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->j:Ljava/lang/Integer;

    invoke-static {v1, p1, v4, v4, v2}, LG5/h3;->d(IIIII)Landroid/graphics/Matrix;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->i:Landroid/graphics/Matrix;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->i:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v4, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->j:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    if-ne v4, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string v2, "initData width = "

    const-string v4, ", height: "

    const-string v5, "SRCB/QRBarcodeDecoder"

    invoke-static {v1, p1, v2, v4, v5}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->b:I

    int-to-float v1, p1

    if-eqz v3, :cond_2

    iget v2, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->a:I

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->a:I

    int-to-float v4, v2

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    int-to-float p1, p1

    div-float/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v1, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->a:I

    iget v2, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->b:I

    if-eqz v3, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    int-to-float v3, v3

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iget-object v0, v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v4, p1, v0}, LG5/h3;->d(IIIII)Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;->barcodeDecoder:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    return-object p0
.end method

.method private final isDecodeAvailable(Landroid/graphics/Bitmap;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "BarcodeEngineAdapter"

    if-eqz p0, :cond_1

    const-string p1, "isDecodeAvailable true"

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;->logString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDecodeAvailable false: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is too small!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;->isDecodeAvailable(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;->logString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process barcode with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BarcodeEngineAdapter"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;->getBarcodeScanResult(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
