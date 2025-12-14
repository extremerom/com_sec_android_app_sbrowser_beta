.class public Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 D2\u00020\u0001:\u0001DB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0010J\r\u0010\u0019\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0019\u0010\u0010J\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001c\u0010\u0010J\u0015\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u0015\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001d\u0010!\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010#\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008#\u0010$J\u001d\u0010%\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010\'\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\'\u0010$J\u001d\u0010(\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008(\u0010&J%\u0010*\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u000b\u00a2\u0006\u0004\u0008*\u0010+J%\u0010,\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u000b\u00a2\u0006\u0004\u0008,\u0010+J%\u0010-\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u000b\u00a2\u0006\u0004\u0008-\u0010+J\u001f\u0010.\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008.\u0010\rJ\u001f\u0010/\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008/\u0010\rJ#\u00102\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u00042\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\t00\u00a2\u0006\u0004\u00082\u00103J-\u00107\u001a\u00020\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\u00132\u0008\u00105\u001a\u0004\u0018\u00010\u00132\u0008\u00106\u001a\u0004\u0018\u00010\u0013H\u0007\u00a2\u0006\u0004\u00087\u00108J\u0011\u00109\u001a\u0004\u0018\u00010\u0013H\u0007\u00a2\u0006\u0004\u00089\u0010:J\u0011\u0010;\u001a\u0004\u0018\u00010\u0013H\u0007\u00a2\u0006\u0004\u0008;\u0010:J\u0011\u0010<\u001a\u0004\u0018\u00010\u0013H\u0007\u00a2\u0006\u0004\u0008<\u0010:R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010=R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010>R\u0018\u0010?\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u00105\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010@R\u0018\u00106\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u0010@R\u0018\u0010B\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010C\u00a8\u0006E"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "instanceId",
        "<init>",
        "(Landroid/content/Context;I)V",
        "bitmapType",
        "",
        "key",
        "Landroid/graphics/Bitmap;",
        "loadBitmapFromFileToCache",
        "(ILjava/lang/String;)Landroid/graphics/Bitmap;",
        "Ldb/r;",
        "initializeFullscreenCache",
        "()V",
        "initializeThumbnailCache",
        "initializeLiteThumbnailCache",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;",
        "getBitmapCache",
        "(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;",
        "getBitmapTypeString",
        "(I)Ljava/lang/String;",
        "initialize",
        "clearAllCache",
        "clearCache",
        "(I)V",
        "trimAllMemCache",
        "trimMemCache",
        "",
        "isBitmapCacheAvailable",
        "(I)Z",
        "existInDiskCache",
        "(ILjava/lang/String;)Z",
        "removeBitmapFromAllCache",
        "(Ljava/lang/String;)V",
        "removeBitmapFromCache",
        "(ILjava/lang/String;)V",
        "removeBitmapFromAllMemCache",
        "removeBitmapFromMemCache",
        "bitmap",
        "addBitmapToMemCache",
        "(ILjava/lang/String;Landroid/graphics/Bitmap;)V",
        "addBitmapToDiskCache",
        "saveBitmapToFile",
        "getBitmapFromMemCache",
        "getBitmapFromDiskCache",
        "",
        "excludedKeys",
        "cleanUnusedCacheItems",
        "(ILjava/util/List;)V",
        "fullscreenCache",
        "thumbnailCache",
        "liteThumbnailCache",
        "setMockCache",
        "(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)V",
        "getFullscreenCache",
        "()Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;",
        "getThumbnailCache",
        "getLiteThumbnailCache",
        "Landroid/content/Context;",
        "I",
        "fullScreenCache",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;",
        "bitmapSaver",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bitmapSaver:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fullScreenCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final instanceId:I

.field private liteThumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private thumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->context:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->instanceId:I

    return-void
.end method

.method private final getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->liteThumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->thumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->fullScreenCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    :goto_0
    return-object p0
.end method

.method private final getBitmapTypeString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "LiteThumbnail"

    goto :goto_0

    :cond_1
    const-string p0, "Thumbnail"

    goto :goto_0

    :cond_2
    const-string p0, "FullScreen"

    :goto_0
    return-object p0
.end method

.method private final initializeFullscreenCache()V
    .locals 10

    const-string v0, "BitmapCacheManager"

    const-string v1, "[initializeFullscreenCache]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;->FULL_SCREEN_CACHE_DIR:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->instanceId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->context:Landroid/content/Context;

    const/4 v8, 0x3

    const/4 v9, 0x3

    const/high16 v7, 0x15e00000

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->fullScreenCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    return-void
.end method

.method private final initializeLiteThumbnailCache()V
    .locals 10

    const-string v0, "BitmapCacheManager"

    const-string v1, "[initializeLiteThumbnailCache]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;->LITE_THUMBNAIL_CACHE_DIR:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->instanceId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    move v8, v1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    move v9, v1

    :goto_1
    const v7, 0x12d8d440

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->liteThumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    return-void
.end method

.method private final initializeThumbnailCache()V
    .locals 10

    const-string v0, "BitmapCacheManager"

    const-string v1, "[initializeThumbnailCache]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;->THUMBNAIL_CACHE_DIR:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->instanceId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    move v8, v1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    move v9, v1

    :goto_1
    const v7, 0x12d8d440

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->thumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    return-void
.end method

.method private final loadBitmapFromFileToCache(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[loadBitmapFromFileToCache] for key = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " load bitmap to cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BitmapCacheManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->bitmapSaver:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;->loadBitmapFromFile(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToDiskCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToMemCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final addBitmapToDiskCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapTypeString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[addBitmapToDiskCache] "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " => "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapCacheManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final addBitmapToMemCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapTypeString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[addBitmapToMemCache] "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " => "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapCacheManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final cleanUnusedCacheItems(ILjava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "excludedKeys"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object p0

    const-string p1, "BitmapCacheManager"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->cleanUnusedBitmapsFromDiskCache(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[cleanUnusedCacheItems] failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "[cleanUnusedCacheItems] cache was not initialized"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final clearAllCache()V
    .locals 2

    const-string v0, "BitmapCacheManager"

    const-string v1, "[clearAllCache]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->clearCache(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->clearCache(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->clearCache(I)V

    return-void
.end method

.method public final clearCache(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapTypeString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[clearCache] clearing "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapCacheManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->clearCache()V

    return-void
.end method

.method public final existInDiskCache(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->existInDiskCache(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getBitmapFromDiskCache(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->existInDiskCache(ILjava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getBitmapFromDiskCache] for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BitmapCacheManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->loadBitmapFromFileToCache(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToMemCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0
.end method

.method public final getBitmapFromMemCache(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getFullscreenCache()Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->fullScreenCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    return-object p0
.end method

.method public final getLiteThumbnailCache()Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->liteThumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    return-object p0
.end method

.method public final getThumbnailCache()Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->thumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    return-object p0
.end method

.method public final initialize()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->initializeFullscreenCache()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->initializeThumbnailCache()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->initializeLiteThumbnailCache()V

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->bitmapSaver:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;

    return-void
.end method

.method public final isBitmapCacheAvailable(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->isDiskCacheAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeBitmapFromAllCache(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->removeBitmapFromCache(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->removeBitmapFromCache(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->removeBitmapFromCache(ILjava/lang/String;)V

    return-void
.end method

.method public final removeBitmapFromAllMemCache(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->removeBitmapFromMemCache(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->removeBitmapFromMemCache(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->removeBitmapFromMemCache(ILjava/lang/String;)V

    return-void
.end method

.method public final removeBitmapFromCache(ILjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapTypeString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[removeBitmapFromCache] "

    const-string v1, " => "

    const-string v2, "BitmapCacheManager"

    invoke-static {p1, p0, v1, p2, v2}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final removeBitmapFromMemCache(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapTypeString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[removeBitmapFromMemCache] "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " => "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapCacheManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->removeFromMemCache(Ljava/lang/String;)V

    return-void
.end method

.method public final saveBitmapToFile(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapTypeString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[saveBitmapToFile] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " => "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapCacheManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->bitmapSaver:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapSaver;->saveBitmapToFile(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final setMockCache(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->fullScreenCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->thumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->liteThumbnailCache:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    return-void
.end method

.method public final trimAllMemCache()V
    .locals 2

    const-string v0, "BitmapCacheManager"

    const-string v1, "[trimAllMemCache]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->trimMemCache(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->trimMemCache(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->trimMemCache(I)V

    return-void
.end method

.method public final trimMemCache(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapTypeString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[trimMemCache] trim "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapCacheManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->trimMemCache()V

    return-void
.end method
