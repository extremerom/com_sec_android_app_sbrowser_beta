.class public Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bitmap_manager/cache/ICache;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 =2\u00020\u0001:\u0001=B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001f\u0010\u001e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010 \u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0010J\u0017\u0010!\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010$\u001a\u00020#2\u0006\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010&\u001a\u00020#\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\n\u00a2\u0006\u0004\u0008(\u0010\u000cJ\u001b\u0010+\u001a\u00020\n2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00040)\u00a2\u0006\u0004\u0008+\u0010,J\'\u00101\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\u00062\u0006\u00100\u001a\u00020/H\u0016\u00a2\u0006\u0004\u00081\u00102R\u0014\u00104\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u00106R\u0018\u00108\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010;\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<\u00a8\u0006>"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/ICache;",
        "Landroid/content/Context;",
        "context",
        "",
        "diskCacheDirectory",
        "",
        "diskCacheSize",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;I)V",
        "Ldb/r;",
        "initializeDiskCache",
        "()V",
        "key",
        "Landroid/graphics/Bitmap;",
        "obtainBitmapFromSnapshot",
        "(Ljava/lang/String;)Landroid/graphics/Bitmap;",
        "Ljava/io/InputStream;",
        "inputStream",
        "readFromInputStream",
        "(Ljava/io/InputStream;)Landroid/graphics/Bitmap;",
        "bitmap",
        "Ljava/io/OutputStream;",
        "os",
        "writeToOutputStream",
        "(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V",
        "",
        "b",
        "byteToUnsignedInt",
        "(B)I",
        "put",
        "(Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "get",
        "remove",
        "(Ljava/lang/String;)V",
        "",
        "exist",
        "(Ljava/lang/String;)Z",
        "isAvailable",
        "()Z",
        "close",
        "",
        "excludedKeys",
        "cleanUnusedBitmapsFromDisk",
        "(Ljava/util/List;)V",
        "width",
        "height",
        "Landroid/graphics/Bitmap$Config;",
        "config",
        "createBitmap",
        "(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;",
        "Ljava/lang/Object;",
        "diskCacheLock",
        "Ljava/lang/Object;",
        "I",
        "Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;",
        "diskLruCache",
        "Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;",
        "Ljava/io/File;",
        "diskCacheDir",
        "Ljava/io/File;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private diskCacheDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final diskCacheLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final diskCacheSize:I

.field private diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "initialize failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DiskCache"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput p3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheSize:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->initializeDiskCache()V

    return-void
.end method

.method private final byteToUnsignedInt(B)I
    .locals 0

    and-int/lit16 p0, p1, 0xff

    return p0
.end method

.method private final initializeDiskCache()V
    .locals 7

    const-string v0, "[initializeDiskCache] failed: "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheDir:Ljava/io/File;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheDir:Ljava/io/File;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheDir:Ljava/io/File;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string p0, "DiskCache"

    const-string v0, "[initializeDiskCache] directory creation failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->getAvailableSpace(Ljava/io/File;)J

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v5, v4

    cmp-long v2, v2, v5

    if-lez v2, :cond_4

    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheDir:Ljava/io/File;

    int-to-long v3, v4

    const/4 v5, 0x1

    invoke-static {v2, v5, v5, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "DiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "DiskCache"

    const-string v2, "[initializeDiskCache] failed: Not enough disk space."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method private final obtainBitmapFromSnapshot(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "DiskCache"

    const-string v1, "[obtainBitmapFromSnapshot] snapshot is null for "

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->get(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v2}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :try_start_3
    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->readFromInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {p1, v2}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v3, v2}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-static {p1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_0
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-static {v3, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[obtainBitmapFromSnapshot] failed IOException: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private final readFromInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "[readFromInputStream] failed: "

    const-string v1, "DiskCache"

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-object v2, p1

    check-cast v2, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    aget-byte v2, v3, v4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->byteToUnsignedInt(B)I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->byteToUnsignedInt(B)I

    move-result v2

    const/16 v6, 0xd8

    if-ne v2, v6, :cond_0

    const/4 v2, 0x2

    aget-byte v2, v3, v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->byteToUnsignedInt(B)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const-string v2, "[readFromInputStream] just bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/StreamBitmapData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p1, :cond_1

    :try_start_3
    invoke-static {v2, v5}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v5

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/StreamBitmapData;->getWidth()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/StreamBitmapData;->getHeight()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/StreamBitmapData;->getBitmapArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v3, :cond_3

    :try_start_5
    invoke-static {v2, v5}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v5

    :cond_3
    :try_start_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/StreamBitmapData;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/StreamBitmapData;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/StreamBitmapData;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-virtual {p0, v4, v6, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_4

    :try_start_7
    invoke-static {v2, v5}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-object v5

    :cond_4
    :try_start_8
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {v2, v5}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-object p0

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_5
    :goto_0
    :try_start_a
    const-string p0, "[readFromInputStream] failed: invalid width/height"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-static {v2, v5}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-object v5

    :goto_1
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_d
    invoke-static {v2, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :goto_3
    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method

.method private final writeToOutputStream(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final cleanUnusedBitmapsFromDisk(Ljava/util/List;)V
    .locals 6
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lbd/e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DiskCache"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[cleanUnusedBitmapsFromDisk] file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final close()V
    .locals 4

    const-string v0, "[close] failed: "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-eqz v2, :cond_1

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isClosed()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "DiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "config"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public exist(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->initializeDiskCache()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isBitmapStored(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-nez v1, :cond_0

    const-string p0, "DiskCache"

    const-string p1, "[get] returns null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->initializeDiskCache()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->obtainBitmapFromSnapshot(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheDir:Ljava/io/File;

    if-nez p0, :cond_0

    const-string p0, "DiskCache"

    const-string v0, "[isAvailable] mDiskCacheDir: is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "[put] failed: "

    const-string v1, "[put] failed: "

    const-string v2, "key"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bitmap"

    invoke-static {p2, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->initializeDiskCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->edit(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    monitor-exit v2

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->writeToOutputStream(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->commit()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x0

    :try_start_4
    invoke-static {v0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-static {v0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    const-string p1, "DiskCache"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->initializeDiskCache()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    monitor-exit v2

    return-void

    :catch_2
    move-exception p0

    :try_start_8
    const-string p1, "DiskCache"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v2

    return-void

    :cond_3
    :goto_3
    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2

    throw p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "[remove] failed: "

    const-string v1, "[remove] for "

    const-string v2, "key"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    if-nez v3, :cond_0

    const-string p0, "DiskCache"

    const-string p1, "[remove] Disk cache is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->initializeDiskCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    const-string v3, "DiskCache"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->diskLruCache:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "DiskCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2

    throw p0
.end method
