.class public final Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\rB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;",
        "",
        "<init>",
        "()V",
        "isLightThemedBitmap",
        "",
        "imgBitmap",
        "Landroid/graphics/Bitmap;",
        "getThemeColor",
        "",
        "avgHSB",
        "Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;",
        "getAverageHSBFromImage",
        "HSB",
        "SBrowser_highendBetaGlobal64Release"
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAverageHSBFromImage(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;
    .locals 26

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    if-ge v5, v0, :cond_6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v1, :cond_5

    move-object/from16 v14, p1

    invoke-virtual {v14, v5, v13}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v15

    const-string v4, "getColor(...)"

    invoke-static {v15, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/graphics/Color;->red()F

    move-result v4

    float-to-double v2, v4

    invoke-virtual {v15}, Landroid/graphics/Color;->green()F

    move-result v4

    move/from16 v18, v0

    move/from16 v19, v1

    float-to-double v0, v4

    invoke-virtual {v15}, Landroid/graphics/Color;->blue()F

    move-result v4

    float-to-double v14, v4

    move/from16 v20, v5

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide/from16 v21, v11

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    sub-double v11, v4, v11

    const-wide/16 v16, 0x0

    cmpg-double v23, v4, v16

    if-nez v23, :cond_0

    move-wide/from16 v23, v16

    goto :goto_2

    :cond_0
    div-double v23, v11, v4

    :goto_2
    cmpg-double v25, v11, v16

    if-nez v25, :cond_1

    const-wide/16 v2, 0x0

    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_1
    cmpg-double v25, v4, v2

    if-nez v25, :cond_2

    sub-double/2addr v0, v14

    div-double/2addr v0, v11

    const/4 v2, 0x6

    int-to-double v2, v2

    rem-double/2addr v0, v2

    goto :goto_3

    :cond_2
    cmpg-double v25, v4, v0

    if-nez v25, :cond_3

    sub-double/2addr v14, v2

    div-double/2addr v14, v11

    const/4 v0, 0x2

    int-to-double v0, v0

    add-double/2addr v0, v14

    goto :goto_3

    :cond_3
    sub-double/2addr v2, v0

    div-double/2addr v2, v11

    const/4 v0, 0x4

    int-to-double v0, v0

    add-double/2addr v0, v2

    :goto_3
    const/16 v2, 0x3c

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v11, v0, v2

    if-gez v11, :cond_4

    const/16 v11, 0x168

    int-to-double v11, v11

    add-double v16, v0, v11

    goto :goto_4

    :cond_4
    move-wide/from16 v16, v0

    :goto_4
    add-double v6, v6, v16

    const/16 v0, 0x64

    int-to-double v0, v0

    mul-double v23, v23, v0

    add-double v9, v23, v9

    mul-double/2addr v4, v0

    add-double v11, v4, v21

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v5, v20

    goto/16 :goto_1

    :cond_5
    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v5

    move-wide/from16 v21, v11

    const-wide/16 v2, 0x0

    add-int/lit8 v5, v20, 0x1

    goto/16 :goto_0

    :cond_6
    int-to-double v0, v8

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-double/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;-><init>(III)V

    return-object v1
.end method

.method private final getThemeColor(Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->component1()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->component2()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->component3()I

    move-result p1

    const-string v1, "#ffffff"

    const/16 v2, 0x2d

    const/16 v3, 0x55

    const/16 v4, 0x56

    const-string v5, "#000000"

    const/16 v6, 0x46

    const/16 v7, 0x1e

    if-le p0, v7, :cond_0

    const/16 v8, 0xbe

    if-le p0, v8, :cond_4

    :cond_0
    const/16 v8, 0x168

    if-gt p0, v8, :cond_4

    if-gt v0, v2, :cond_1

    if-ge p1, v3, :cond_c

    :cond_1
    const/4 p0, 0x5

    if-gt v0, p0, :cond_2

    if-gt v6, p1, :cond_2

    if-ge p1, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    if-lt v0, v2, :cond_3

    if-gt v3, p1, :cond_3

    const/16 v1, 0x65

    :cond_3
    :goto_0
    move-object v1, v5

    goto :goto_2

    :cond_4
    const/16 v8, 0x32

    if-gt v8, p0, :cond_6

    const/16 v8, 0x92

    if-ge p0, v8, :cond_6

    if-ge p1, v3, :cond_c

    const/16 p0, 0x14

    if-gt v0, p0, :cond_5

    if-gt v6, p1, :cond_5

    if-ge p1, v4, :cond_5

    goto :goto_2

    :cond_5
    if-lt v0, p0, :cond_3

    if-gt v6, p1, :cond_3

    goto :goto_0

    :cond_6
    if-gt v7, p0, :cond_7

    const/16 v7, 0x33

    if-ge p0, v7, :cond_7

    goto :goto_1

    :cond_7
    const/16 v7, 0x91

    if-gt v7, p0, :cond_3

    const/16 v7, 0xbf

    if-ge p0, v7, :cond_3

    :goto_1
    const/16 p0, 0x64

    if-gt v0, p0, :cond_8

    const/16 p0, 0x5a

    if-ge p1, p0, :cond_c

    :cond_8
    if-gt v0, v2, :cond_9

    if-gt v3, p1, :cond_9

    const/16 p0, 0x5b

    if-ge p1, p0, :cond_9

    goto :goto_2

    :cond_9
    const/16 p0, 0xf

    if-gt v0, p0, :cond_a

    if-gt v6, p1, :cond_a

    if-ge p1, v4, :cond_a

    goto :goto_2

    :cond_a
    if-lt v0, v2, :cond_b

    if-gt v3, p1, :cond_b

    const/16 v1, 0x60

    if-ge p1, v1, :cond_b

    goto :goto_0

    :cond_b
    if-lt v0, p0, :cond_3

    if-gt v6, p1, :cond_3

    goto :goto_0

    :cond_c
    :goto_2
    return-object v1
.end method


# virtual methods
.method public final isLightThemedBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imgBitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;->getAverageHSBFromImage(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;->getThemeColor(Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "#000000"

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "#ffffff"

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p0, 0x1

    :goto_0
    return p0
.end method
