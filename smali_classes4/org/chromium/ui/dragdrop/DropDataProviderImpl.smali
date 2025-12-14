.class public Lorg/chromium/ui/dragdrop/DropDataProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/dragdrop/DropDataProviderImpl$DropPipeDataWriter;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation build Lorg/chromium/build/annotations/UsedByReflection;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BYTES_PARAM:Ljava/lang/String; = "bytes"

.field public static final CACHE_METHOD_NAME:Ljava/lang/String; = "cache"

.field public static final CLEAR_CACHE_PARAM:Ljava/lang/String; = "clearCacheDelayedMs"

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final DEFAULT_CLEAR_CACHED_DATA_INTERVAL_MS:I = 0xea60

.field public static final FULL_AUTH_URI:Landroid/net/Uri;

.field public static final IMAGE_CONTENT_EXTENSION_PARAM:Ljava/lang/String; = "imageContentExtension"

.field public static final IMAGE_FILE_PARAM:Ljava/lang/String; = "imageFilename"

.field public static final IMAGE_USAGE_PARAM:Ljava/lang/String; = "imageIsInUse"

.field private static final LOCK:Ljava/lang/Object;

.field public static final ON_DRAG_END_METHOD_NAME:Ljava/lang/String; = "onDragEnd"

.field public static final SET_INTERVAL_METHOD_NAME:Ljava/lang/String; = "setClearCachedDataIntervalMs"


# instance fields
.field private mClearCachedDataIntervalMs:I

.field private mContentProviderUri:Landroid/net/Uri;

.field private mDragEndTime:J

.field private mDropPipeDataWriter:Lorg/chromium/ui/dragdrop/DropDataProviderImpl$DropPipeDataWriter;

.field private mHandler:Landroid/os/Handler;

.field private mImageBytes:[B

.field private mImageFilename:Ljava/lang/String;

.field private mLastUri:Landroid/net/Uri;

.field private mLastUriClearedTimestamp:J

.field private mLastUriCreatedTimestamp:J

.field private mLastUriRecorded:Z

.field private mMimeType:Ljava/lang/String;

.field private mOpenFileLastAccessTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DropDataProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->FULL_AUTH_URI:Landroid/net/Uri;

    const-string v0, "_display_name"

    const-string v1, "_size"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mClearCachedDataIntervalMs:I

    new-instance v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl$DropPipeDataWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl$DropPipeDataWriter;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mDropPipeDataWriter:Lorg/chromium/ui/dragdrop/DropDataProviderImpl$DropPipeDataWriter;

    return-void
.end method

.method private clearCacheData()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mImageBytes:[B

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mImageFilename:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mMimeType:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mContentProviderUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUriClearedTimestamp:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUriRecorded:Z

    :cond_0
    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mContentProviderUri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private clearCacheWithDelay()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    iget p0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mClearCachedDataIntervalMs:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private generateUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".DropDataProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private matchMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move p0, v3

    :cond_3
    :goto_0
    return p0
.end method

.method public static onCreate()Lorg/chromium/ui/dragdrop/DropDataProviderImpl;
    .locals 1
    .annotation build Lorg/chromium/build/annotations/UsedByReflection;
    .end annotation

    new-instance v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-direct {v0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cache([BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUriCreatedTimestamp:J

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->generateUri()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->clearCacheData()V

    iput-wide v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUriCreatedTimestamp:J

    iput-object p1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mImageBytes:[B

    iput-object p3, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mImageFilename:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mMimeType:Ljava/lang/String;

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mDragEndTime:J

    iput-wide p2, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mOpenFileLastAccessTime:J

    iput-object v4, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mContentProviderUri:Landroid/net/Uri;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v2, p2

    if-lez p0, :cond_0

    sub-long/2addr v0, v2

    const-string p0, "Android.DragDrop.Image.UriCreatedInterval"

    invoke-static {p0, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    :cond_0
    array-length p0, p1

    div-int/lit16 p0, p0, 0x400

    const-string p1, "Android.DragDrop.Image.Size"

    const p2, 0x186a0

    const/16 p3, 0x32

    const/4 v0, 0x1

    invoke-static {p1, p0, v0, p2, p3}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    return-object v4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "setClearCachedDataIntervalMs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "onDragEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "clearCacheDelayedMs"

    const p2, 0xea60

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->setClearCachedDataIntervalMs(I)V

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "bytes"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [B

    const-string p2, "imageContentExtension"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "imageFilename"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->cache([BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "uri"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1

    :pswitch_2
    invoke-static {p3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imageIsInUse"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->onDragEnd(Z)V

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3e5b97d8 -> :sswitch_2
        0x5a0af82 -> :sswitch_1
        0x31bcb202 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearCache()V
    .locals 7

    sget-object v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->clearCacheData()V

    iget-wide v1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mDragEndTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-wide v5, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mOpenFileLastAccessTime:J

    cmp-long p0, v5, v3

    if-lez p0, :cond_0

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-string p0, "Android.DragDrop.Image.OpenFileTime.LastAttempt"

    invoke-static {p0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mContentProviderUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mMimeType:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->matchMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array v1, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v1, p0

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mContentProviderUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mMimeType:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDragEnd(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->clearCache()V

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->clearCacheWithDelay()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mDragEndTime:J

    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public openAssetFile(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 13

    move-object v0, p0

    move-object v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v5, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mContentProviderUri:Landroid/net/Uri;

    invoke-virtual {p2, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p2, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUriRecorded:Z

    if-nez v1, :cond_1

    iget-wide v6, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUriClearedTimestamp:J

    sub-long/2addr v3, v6

    const-string v1, "Android.DragDrop.Image.OpenFileTime.FirstExpired"

    invoke-static {v1, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mLastUriRecorded:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v5

    return-object v2

    :cond_2
    iget-wide v6, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mOpenFileLastAccessTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_4

    iget-wide v6, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mDragEndTime:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    sub-long v8, v3, v6

    :goto_1
    const-string v2, "Android.DragDrop.Image.OpenFileTime.FirstAttempt"

    invoke-static {v2, v8, v9}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    :cond_4
    iput-wide v3, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mOpenFileLastAccessTime:J

    iget-object v2, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mImageBytes:[B

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [B

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mDropPipeDataWriter:Lorg/chromium/ui/dragdrop/DropDataProviderImpl$DropPipeDataWriter;

    move-object v0, p1

    move-object v1, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    array-length v1, v6

    int-to-long v11, v1

    const-wide/16 v9, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public openFile(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const-string v0, "r"

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->openAssetFile(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    sget-object v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    iget-object v2, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mContentProviderUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mImageBytes:[B

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mImageFilename:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    sget-object p2, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->COLUMNS:[Ljava/lang/String;

    :cond_1
    array-length v0, p2

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v2, v0, :cond_4

    aget-object v7, p2, v2

    const-string v8, "_display_name"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    :cond_2
    const-string v8, "_size"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-array p2, v3, [Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_5

    const-string v2, "_display_name"

    aput-object v2, p2, v1

    aput-object p0, v0, v1

    move v1, v6

    :cond_5
    if-eqz v5, :cond_6

    const-string p0, "_size"

    aput-object p0, p2, v1

    array-length p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    :cond_6
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_7
    :goto_2
    :try_start_1
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setClearCachedDataIntervalMs(I)V
    .locals 1

    sget-object v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->mClearCachedDataIntervalMs:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
