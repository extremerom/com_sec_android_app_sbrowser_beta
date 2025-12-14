.class public final LZ5/A;
.super Lcom/google/android/gms/common/internal/i;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lv/r;

.field public final p:Lv/r;

.field public final q:Lv/r;

.field public final r:Lv/r;

.field public final s:Lv/r;

.field public final t:Lv/r;

.field public final u:Lv/r;

.field public final v:Lv/r;

.field public final w:Lv/r;

.field public final x:Lv/r;

.field public final y:LZ5/B;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc5/y;Lc5/y;Lcom/google/android/gms/common/internal/h;)V
    .locals 9

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p1}, LZ5/B;->a(Landroid/content/Context;)LZ5/B;

    move-result-object v1

    const/16 v5, 0xe

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    new-instance p2, Lv/r;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->b:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->p:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->q:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->r:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->s:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->t:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->u:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->v:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->w:Lv/r;

    new-instance p2, Lv/r;

    invoke-direct {p2, p3}, Lv/r;-><init>(I)V

    iput-object p2, p0, LZ5/A;->x:Lv/r;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object v0, p0, LZ5/A;->a:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, LZ5/A;->y:LZ5/B;

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string p2, "wearos_assets"

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "streamtmp"

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p0, p2

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final connect(Lcom/google/android/gms/common/internal/d;)V
    .locals 6

    const-string v0, "com.google.android.wearable.app.cn"

    const-string v1, "The Wear OS app is out of date. Requires API version 8600000 but found "

    invoke-virtual {p0}, LZ5/A;->requiresGooglePlayServices()Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "com.google.android.wearable.api.version"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const v4, 0x8339c0

    if-ge v2, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "WearableClient"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.wearable.app.cn.UPDATE_ANDROID_WEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v5, 0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "market://details"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "id"

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v4, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    sget v0, LK5/b;->a:I

    invoke-static {v1, v3, v4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/internal/f;->triggerNotAvailable(Lcom/google/android/gms/common/internal/d;ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/f;->triggerNotAvailable(Lcom/google/android/gms/common/internal/d;ILandroid/app/PendingIntent;)V

    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/f;->connect(Lcom/google/android/gms/common/internal/d;)V

    return-void
.end method

.method public final createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LZ5/s;

    if-eqz v1, :cond_1

    move-object p0, v0

    check-cast p0, LZ5/s;

    goto :goto_0

    :cond_1
    new-instance v0, LZ5/s;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 0

    sget-object p0, LY5/h;->b:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0x8339c0

    return p0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.wearable.internal.IWearableService"

    return-object p0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.wearable.BIND"

    return-object p0
.end method

.method public final getStartServicePackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ5/A;->y:LZ5/B;

    invoke-virtual {p0}, LZ5/B;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.google.android.wearable.app.cn"

    return-object p0

    :cond_0
    const-string p0, "com.google.android.gms"

    return-object p0
.end method

.method public final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "WearableClient"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPostInitHandler: statusCode "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, LZ5/A;->b:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->p:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->q:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->s:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->t:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->u:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->v:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->w:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->x:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    iget-object p1, p0, LZ5/A;->r:Lv/r;

    invoke-virtual {p1, p2}, Lv/r;->d(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/f;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final requiresGooglePlayServices()Z
    .locals 0

    iget-object p0, p0, LZ5/A;->y:LZ5/B;

    invoke-virtual {p0}, LZ5/B;->b()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
