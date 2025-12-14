.class public final Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 82\u00020\u0001:\u00018B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\r\u0010\u001b\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001c\u0010\u0017J\u0015\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001d\u0010\"\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u0004\u0018\u00010 2\u0006\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0004\u0008$\u0010%J\u001b\u0010(\u001a\u00020\u00152\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00040&\u00a2\u0006\u0004\u0008(\u0010)J\u001d\u0010*\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008*\u0010#J\u0015\u0010+\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0004\u0008+\u0010\u0017J\u0017\u0010,\u001a\u0004\u0018\u00010 2\u0006\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0004\u0008,\u0010%J\r\u0010-\u001a\u00020\u0015\u00a2\u0006\u0004\u0008-\u0010\u0019R\u0014\u0010.\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00100\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0014\u00103\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0017\u00105\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00085\u00107\u00a8\u00069"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "diskCacheDirectory",
        "",
        "diskCacheSize",
        "memCacheSize",
        "reusableCount",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;III)V",
        "cacheDirectory",
        "cacheSize",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;",
        "initializeDiskCache",
        "(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;",
        "initializeMemoryCache",
        "(I)Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;",
        "key",
        "Ldb/r;",
        "removeFromDiskCache",
        "(Ljava/lang/String;)V",
        "closeDiskCache",
        "()V",
        "clearMemCache",
        "clearCache",
        "remove",
        "",
        "existInDiskCache",
        "(Ljava/lang/String;)Z",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "addBitmapToDiskCache",
        "(Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "getBitmapFromDiskCache",
        "(Ljava/lang/String;)Landroid/graphics/Bitmap;",
        "",
        "excludedKeys",
        "cleanUnusedBitmapsFromDiskCache",
        "(Ljava/util/List;)V",
        "addBitmapToMemCache",
        "removeFromMemCache",
        "getBitmapFromMemCache",
        "trimMemCache",
        "diskCache",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;",
        "memoryCache",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;",
        "bitmapPool",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;",
        "isDiskCacheAvailable",
        "Z",
        "()Z",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bitmapPool:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isDiskCacheAvailable:Z

.field private final memoryCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diskCacheDirectory"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->initializeDiskCache(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->initializeMemoryCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->memoryCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    new-instance p2, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;

    invoke-direct {p2, p5}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;-><init>(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->bitmapPool:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->isAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->isDiskCacheAvailable:Z

    return-void
.end method

.method public static final synthetic access$getBitmapPool$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->bitmapPool:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;

    return-object p0
.end method

.method private final clearMemCache()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->memoryCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->clean()V

    return-void
.end method

.method private final closeDiskCache()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->close()V

    return-void
.end method

.method private final initializeDiskCache(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeDiskCache$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeDiskCache$1;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)V

    return-object v0
.end method

.method private final initializeMemoryCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeMemoryCache$1;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeMemoryCache$1;-><init>(ILcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)V

    return-object v0
.end method

.method private final removeFromDiskCache(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[removeFromDiskCache] "

    const-string v1, "BitmapCache"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[addBitmapToDiskCache] put "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapCache"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->remove(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[addBitmapToMemCache] put "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapCache"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->memoryCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->remove(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->memoryCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final cleanUnusedBitmapsFromDiskCache(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "excludedKeys"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->cleanUnusedBitmapsFromDisk(Ljava/util/List;)V

    return-void
.end method

.method public final clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->bitmapPool:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->clearMemCache()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->closeDiskCache()V

    return-void
.end method

.method public final existInDiskCache(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->exist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->diskCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->memoryCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final isDiskCacheAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->isDiskCacheAvailable:Z

    return p0
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->removeFromDiskCache(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->removeFromMemCache(Ljava/lang/String;)V

    return-void
.end method

.method public final removeFromMemCache(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[removeFromMemCache] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapCache"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->memoryCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final trimMemCache()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->memoryCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->trim()V

    return-void
.end method
