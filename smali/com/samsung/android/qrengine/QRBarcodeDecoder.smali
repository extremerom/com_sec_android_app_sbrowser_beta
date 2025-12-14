.class public Lcom/samsung/android/qrengine/QRBarcodeDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:[I

.field public final d:[[I

.field public final e:I

.field public final f:[C

.field public final g:[Ljava/lang/String;

.field public final h:[Ljava/lang/String;

.field public i:Landroid/graphics/Matrix;

.field public j:Ljava/lang/Integer;

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "QREngine.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LH8/a;LH8/b;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->c:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/16 v4, 0x8

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v0, v2, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    const/16 v2, 0x33

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->f:[C

    iput-boolean v5, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->k:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xa

    new-array v6, v2, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->g:[Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->h:[Ljava/lang/String;

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    iget-boolean v0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->k:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->initEngine(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->initEngineWithModelPath(IILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->k:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "init end mEngineId = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    const-string p2, "SRCB/QRBarcodeDecoder"

    invoke-static {p1, p0, p2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static native abortProcessJni()V
.end method

.method public static native barcodeRecognize([BIIIIII[I[CIII)Ljava/lang/String;
.end method

.method public static native barcodeRecognizeRGB([BII[I[CI)Ljava/lang/String;
.end method

.method private static native cropWarpImage(I[BII[I[III)Landroid/graphics/Bitmap;
.end method

.method private static native disableBarcodeTypesJNI(I[II)V
.end method

.method private static native enableBarcodeTypesJNI(I[II)V
.end method

.method private static native getBitmap(I)Landroid/graphics/Bitmap;
.end method

.method private static native getHammingDistance([BIIII)I
.end method

.method private static native getRecogObjectCount(I)I
.end method

.method private static native getRecogObjectPoint(II[I)Z
.end method

.method private static native getRecogObjectText(II)Ljava/lang/String;
.end method

.method private static native getRecogObjectType(II)Ljava/lang/String;
.end method

.method public static native getResult(IJI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native initEngine(II)I
.end method

.method private static native initEngineWithModelPath(IILjava/lang/String;)I
.end method

.method public static native recognizeCode(JI[B[I[CIIIII[I)Ljava/lang/String;
.end method

.method private static native releaseEngine(I)V
.end method

.method private static native resumeProcessJni()V
.end method

.method private static native setImageSizeJni(IIIII)V
.end method

.method private static native setRoiJni(IIIII)V
.end method


# virtual methods
.method public final a()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRecognizedObjectCount mEngineId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    const-string v2, "SRCB/QRBarcodeDecoder"

    invoke-static {v0, v1, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->g:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final b(I[I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->g:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->d:[[I

    aget-object p0, p0, v1

    array-length p1, p2

    invoke-static {p0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    iget p0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    invoke-static {p0, p1, p2}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecogObjectPoint(II[I)Z

    :cond_1
    return-void
.end method

.method public final c(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->g:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    invoke-static {p0, p1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecogObjectText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->h:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    invoke-static {p0, p1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecogObjectType(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 0

    iget p0, p0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->e:I

    invoke-static {p0}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->releaseEngine(I)V

    return-void
.end method

.method public native getSoVersion()Ljava/lang/String;
.end method
