.class public Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CONFIG_FULL_MASKING:Ljava/lang/String; = "full masking"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CONFIG_GAP0:Ljava/lang/String; = "gap0"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CONFIG_GAP8:Ljava/lang/String; = "gap8"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CONFIG_RESIZE_MASKING:Ljava/lang/String; = "resize masking"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final GAP_0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAP_8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x7f

    invoke-direct {v2, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v8, 0x47

    const/4 v1, 0x0

    invoke-direct {v6, v8, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v1, v8}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Landroid/graphics/Point;

    const/16 v1, 0x8f

    invoke-direct {v9, v8, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v1, v8}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    filled-new-array/range {v0 .. v7}, [Landroid/graphics/Point;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->GAP_0:Ljava/util/List;

    new-instance v9, Landroid/graphics/Point;

    const/16 v0, 0x12

    invoke-direct {v9, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v10, Landroid/graphics/Point;

    const/16 v1, 0x7c

    invoke-direct {v10, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v13, Landroid/graphics/Point;

    const/4 v0, 0x4

    invoke-direct {v13, v8, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v0, v8}, Landroid/graphics/Point;-><init>(II)V

    new-instance v15, Landroid/graphics/Point;

    const/16 v0, 0x8b

    invoke-direct {v15, v8, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v8}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v16, v1

    filled-new-array/range {v9 .. v16}, [Landroid/graphics/Point;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->GAP_8:Ljava/util/List;

    return-void
.end method

.method public static availableFullMaskableBitmap(Landroid/graphics/Bitmap;Ljava/util/List;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    div-int/lit16 v2, v2, 0x90

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0x90

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->getMaskableType(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->create(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getMaskableType(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getQuickAccessMaskableConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "full masking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "resize masking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->getPoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->availableFullMaskableBitmap(Landroid/graphics/Bitmap;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->FULL_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->RESIZE_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    :goto_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->RESIZE_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->FULL_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    return-object p0
.end method

.method private static getPoints(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const-string v0, "gap0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->GAP_0:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->GAP_8:Ljava/util/List;

    :goto_0
    return-object p0
.end method
