.class public Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;
    }
.end annotation


# static fields
.field public static final DEVICE_DEFAULT:I = 0x0

.field public static final DEVICE_LSI:I = 0x4

.field public static final DEVICE_LSI_A56:I = 0x6

.field public static final DEVICE_LSI_S22:I = 0x2

.field public static final DEVICE_MTK:I = 0x3

.field public static final DEVICE_MTK_DX3:I = 0x5

.field public static final DEVICE_QC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArcSoft_ArcObjectCaptureJNI_1.0.3"

.field private static verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;


# instance fields
.field private m_ArcEng:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "objectcapture_jni.arcsoft"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->m_ArcEng:J

    return-void
.end method

.method private getNativeVerCode()V
    .locals 5

    invoke-direct {p0}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->native_ARC_OBJECT_CAPTURE_GetVersion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JAR ver:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", JNI vNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    move v0, v2

    goto :goto_1

    :pswitch_0
    const-string v1, "1.0.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :pswitch_1
    const-string v0, "1.0.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v0, "1.0.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_1

    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->UNSUPPORT:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    sput-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    goto :goto_2

    :pswitch_3
    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->V103:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    sput-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    goto :goto_2

    :pswitch_4
    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->V102:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    sput-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    goto :goto_2

    :pswitch_5
    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->V101:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    sput-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2c822b6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private native native_ARC_OBJECT_CAPTURE_GetVersion()Ljava/lang/String;
.end method

.method private native native_ARC_OBJECT_CAPTURE_Init()I
.end method

.method private native native_ARC_OBJECT_CAPTURE_Init(I)I
.end method

.method private native native_ARC_OBJECT_CAPTURE_Process(JLandroid/graphics/Bitmap;Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;)I
.end method

.method private native native_ARC_OBJECT_CAPTURE_Uninit(J)I
.end method

.method private processResult(Landroid/graphics/Bitmap;Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;)V
    .locals 12

    iget p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSalientNum:I

    if-lez p0, :cond_6

    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$1;->$SwitchMap$com$arcsoft$libobjectcapture$ArcObjectCaptureJNI$VER_CODE:[I

    sget-object v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    const-string p1, "Unknown version."

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    const-string p1, "Not supported! Please update .SO to the latest version."

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleRect:Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;

    iget-wide v2, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopX:J

    long-to-int v8, v2

    iget-wide v4, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopY:J

    long-to-int v9, v4

    iget-wide v6, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomX:J

    sub-long/2addr v6, v2

    long-to-int v2, v6

    iget-wide v6, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomY:J

    sub-long/2addr v6, v4

    long-to-int p0, v6

    mul-int v3, v2, p0

    new-array v3, v3, [I

    iget-object v4, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    move-object v5, v3

    move v7, v2

    move v10, v2

    move v11, p0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, p0, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :goto_0
    iget p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSalientNum:I

    if-ge v0, p0, :cond_7

    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsRect:[Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;

    aget-object p0, p0, v0

    iget-wide v2, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomX:J

    iget-wide v4, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopX:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-wide v3, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomY:J

    iget-wide v5, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopY:J

    sub-long/2addr v3, v5

    long-to-int p0, v3

    mul-int v3, v2, p0

    new-array v3, v3, [I

    iget-object v4, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v3

    move v7, v2

    move v10, v2

    move v11, p0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v4, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v2, p0, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    aput-object p0, v4, v0

    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleRect:Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;

    iget-wide v2, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomX:J

    iget-wide v4, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopX:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-wide v3, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomY:J

    iget-wide v5, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopY:J

    sub-long/2addr v3, v5

    long-to-int p0, v3

    mul-int v3, v2, p0

    new-array v3, v3, [I

    iget-object v4, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v3

    move v7, v2

    move v10, v2

    move v11, p0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, p0, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :goto_1
    iget p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSalientNum:I

    if-ge v0, p0, :cond_7

    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsRect:[Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;

    aget-object p0, p0, v0

    iget-wide v2, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomX:J

    iget-wide v4, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopX:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-wide v3, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomY:J

    iget-wide v5, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopY:J

    sub-long/2addr v3, v5

    long-to-int p0, v3

    mul-int v3, v2, p0

    new-array v3, v3, [I

    iget-object v4, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v3

    move v7, v2

    move v10, v2

    move v11, p0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v4, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v2, p0, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    aput-object p0, v4, v0

    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_4
    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    if-eqz p0, :cond_7

    :goto_2
    iget p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSalientNum:I

    if-ge v0, p0, :cond_7

    iget-object p0, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    aget-object p0, p0, v0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    const-string p1, "SDResult.mSalientNum = 0, no object detected!"

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public OBJECT_CAPTURE_GetVersion()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->native_ARC_OBJECT_CAPTURE_GetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OBJECT_CAPTURE_Init(I)I
    .locals 2

    invoke-direct {p0}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->getNativeVerCode()V

    sget-object v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    sget-object v1, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->UNSUPPORT:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    const-string p1, "Not supported! Please update .SO to latest version."

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x7

    return p0

    :cond_0
    sget-object v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->V101:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->native_ARC_OBJECT_CAPTURE_Init(I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->native_ARC_OBJECT_CAPTURE_Init()I

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    sget-object p1, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "native_ARC_OBJECT_CAPTURE_Init error, res = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p0
.end method

.method public OBJECT_CAPTURE_Process(Landroid/graphics/Bitmap;Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;)I
    .locals 5

    invoke-direct {p0}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->getNativeVerCode()V

    sget-object v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->verCode:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    sget-object v1, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->UNSUPPORT:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    const-string p1, "Not supported! Please update .SO to latest version."

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x7

    return p0

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->errorCode:I

    iput v1, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSalientNum:I

    const-string v1, ""

    iput-object v1, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->solutionInfo:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    iput-object v1, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mObjectsRect:[Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;

    iput-object v1, p2, Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;->mSingleRect:Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;

    iget-wide v1, p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->m_ArcEng:J

    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    if-eqz v3, :cond_3

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->native_ARC_OBJECT_CAPTURE_Process(JLandroid/graphics/Bitmap;Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "native_ARC_OBJECT_CAPTURE_Process error, res = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->processResult(Landroid/graphics/Bitmap;Lcom/arcsoft/libobjectcapture/parameters/SD_RESULT;)V

    return v0

    :cond_3
    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    const-string p1, "native_ARC_OBJECT_CAPTURE_Uninit without init, res = 2"

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    :goto_0
    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    const-string p1, "input error, res = 2"

    invoke-static {p0, p1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public OBJECT_CAPTURE_Uninit()I
    .locals 5

    iget-wide v0, p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->m_ArcEng:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->native_ARC_OBJECT_CAPTURE_Uninit(J)I

    move-result v0

    iput-wide v2, p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->m_ArcEng:J

    if-eqz v0, :cond_1

    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "native_ARC_OBJECT_CAPTURE_Uninit error, res = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;->TAG:Ljava/lang/String;

    const-string v0, "native_ARC_OBJECT_CAPTURE_Uninit without init, res = 2"

    invoke-static {p0, v0}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    :cond_1
    return v0
.end method
