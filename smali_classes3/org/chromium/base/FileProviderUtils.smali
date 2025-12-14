.class public abstract Lorg/chromium/base/FileProviderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/FileProviderUtils$FileProviderUtil;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sFileProviderUtil:Lorg/chromium/base/FileProviderUtils$FileProviderUtil;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/FileProviderUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static getContentUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lorg/chromium/base/FileProviderUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/base/FileProviderUtils;->sFileProviderUtil:Lorg/chromium/base/FileProviderUtils$FileProviderUtil;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lorg/chromium/base/FileProviderUtils$FileProviderUtil;->getContentUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setFileProviderUtil(Lorg/chromium/base/FileProviderUtils$FileProviderUtil;)V
    .locals 1

    sget-object v0, Lorg/chromium/base/FileProviderUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/chromium/base/FileProviderUtils;->sFileProviderUtil:Lorg/chromium/base/FileProviderUtils$FileProviderUtil;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
