.class public Lorg/chromium/content_public/app/ZygotePreload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ZygotePreload;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doPreload(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/app/ZygotePreload;->doPreloadCommon(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public final doPreloadCommon(Landroid/content/pm/ApplicationInfo;)V
    .locals 8

    sget-wide v0, Lorg/chromium/build/BuildConfig;->VERSION_CODE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget p0, Lorg/chromium/build/BuildConfig;->MIN_SDK_VERSION:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v2, "ZygotePreload"

    const-string v3, "version=%s (%s) minSdkVersion=%s isBundle=%s"

    const-string v4, "136.0.7103.127"

    invoke-static/range {v2 .. v7}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/chromium/base/process_launcher/ChildProcessService;->setZygoteInfo(IJ)V

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->initInAppZygote()V

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNowInZygote(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "ZygotePreload"

    const-string v0, "Exception in zygote"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
