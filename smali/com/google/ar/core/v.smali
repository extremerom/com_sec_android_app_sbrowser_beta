.class public final Lcom/google/ar/core/v;
.super Lcom/google/ar/core/ArCoreApk;
.source "SourceFile"


# static fields
.field public static final m:Lcom/google/ar/core/v;


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Ljava/lang/Exception;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:J

.field public g:Lcom/google/ar/core/ArCoreApk$Availability;

.field public h:Z

.field public i:Lcom/google/ar/core/G;

.field public j:Z

.field public k:Z

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ar/core/v;

    invoke-direct {v0}, Lcom/google/ar/core/v;-><init>()V

    sput-object v0, Lcom/google/ar/core/v;->m:Lcom/google/ar/core/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/ar/core/ArCoreApk;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ar/core/v;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/v;->d:Z

    return-void
.end method

.method public static d(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.ar.core"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-nez v1, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_0

    array-length p0, p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    :catch_0
    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/google/ar/core/G;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/v;->i:Lcom/google/ar/core/G;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ar/core/G;

    invoke-direct {v0}, Lcom/google/ar/core/G;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ar/core/G;->a(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ar/core/v;->i:Lcom/google/ar/core/G;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/ar/core/v;->i:Lcom/google/ar/core/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/v;->b:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/google/ar/core/v;->e:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/google/ar/core/v;->c:Z

    iget-object v0, p0, Lcom/google/ar/core/v;->i:Lcom/google/ar/core/G;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/ar/core/G;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/v;->i:Lcom/google/ar/core/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Landroid/content/Context;Lcom/google/ar/core/s;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/ar/core/v;->e(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/ar/core/v;->d(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/ar/core/v;->d(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/google/ar/core/v;->l:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/ar/core/v;->b()V
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Lcom/google/ar/core/h;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;
    :try_end_1
    .catch Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :try_start_2
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    :goto_2
    invoke-interface {p2, p0}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/google/ar/core/v;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p2, p0}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ar/core/v;->e(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/google/ar/core/v;->k:Z

    if-eqz v0, :cond_5

    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p2, p0}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/ar/core/v;->a(Landroid/content/Context;)Lcom/google/ar/core/G;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/ar/core/G;->c(Landroid/content/Context;Lcom/google/ar/core/s;)V
    :try_end_2
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :goto_3
    const-string p1, "ARCore-ArCoreApk"

    const-string v0, "Error while checking app details and ARCore status"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p2, p0}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void
.end method

.method public final checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/v;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ar/core/ArCoreApk$Availability;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/ar/core/v;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/v;->h:Z

    new-instance v0, Lcom/google/ar/core/t;

    invoke-direct {v0, p0}, Lcom/google/ar/core/t;-><init>(Lcom/google/ar/core/v;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/ar/core/v;->c(Landroid/content/Context;Lcom/google/ar/core/s;)V

    :cond_1
    iget-object p1, p0, Lcom/google/ar/core/v;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/ar/core/ArCoreApk$Availability;->isUnsupported()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/v;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    :cond_2
    monitor-exit p0

    return-object p1

    :cond_3
    iget-boolean p1, p0, Lcom/google/ar/core/v;->h:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

    monitor-exit p0

    return-object p1

    :cond_4
    const-string p1, "ARCore-ArCoreApk"

    const-string v0, "request not running but result is null?"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final checkAvailabilityAsync(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Lcom/google/ar/core/u;

    invoke-direct {v0, p0, p2}, Lcom/google/ar/core/u;-><init>(Lcom/google/ar/core/v;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/ar/core/v;->c(Landroid/content/Context;Lcom/google/ar/core/s;)V

    return-void
.end method

.method public final declared-synchronized e(Landroid/content/Context;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ar/core/v;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x80

    :try_start_2
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v2, "com.google.ar.core"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.google.ar.core"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "required"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ar/core/v;->k:Z

    const-string v2, "com.google.ar.core.min_apk_version"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.google.ar.core.min_apk_version"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/ar/core/v;->l:I

    const-string v1, "Application manifest must contain activity "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-class v0, Lcom/google/ar/core/InstallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_1

    :try_start_5
    iput-boolean v2, p0, Lcom/google/ar/core/v;->j:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_6
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Could not load application package info"

    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Application manifest must contain meta-data com.google.ar.core.min_apk_version"

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Application manifest must contain meta-data com.google.ar.core"

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Could not load application package metadata"

    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public final requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/ar/core/v;->e(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/google/ar/core/v;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->REQUIRED:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->OPTIONAL:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/ar/core/v;->e(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/google/ar/core/v;->k:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    :goto_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ar/core/v;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/google/ar/core/v;->e(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/ar/core/v;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/ar/core/v;->d(Landroid/content/Context;)I

    move-result v0

    iget v3, p0, Lcom/google/ar/core/v;->l:I

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string v3, "ARCore-ArCoreApk"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/ar/core/v;->b()V

    invoke-static {p1}, Lcom/google/ar/core/h;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    const-string p2, "Starting setup activity"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Setup activity launch failed"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    :goto_2
    return-object p0

    :cond_3
    iget-boolean v0, p0, Lcom/google/ar/core/v;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/ar/core/v;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_4

    const-string p2, "Clearing previous failure: "

    invoke-static {v3, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/ar/core/v;->b:Ljava/lang/Exception;

    goto :goto_3

    :cond_4
    instance-of p0, v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    if-nez p0, :cond_7

    instance-of p0, v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    if-nez p0, :cond_6

    instance-of p0, v0, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_5

    const-string p0, "Throwing RuntimeException."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected exception type"

    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_6
    const-string p0, "Throwing UnavailableUserDeclinedInstallationException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    throw v0

    :cond_7
    const-string p0, "Throwing UnavailableDeviceNotCompatibleException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    throw v0

    :cond_8
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/ar/core/v;->f:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x1388

    cmp-long p2, v5, v7

    if-lez p2, :cond_9

    iput v2, p0, Lcom/google/ar/core/v;->e:I

    :cond_9
    iget p2, p0, Lcom/google/ar/core/v;->e:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/ar/core/v;->e:I

    iput-wide v3, p0, Lcom/google/ar/core/v;->f:J

    const/4 v0, 0x2

    if-gt p2, v0, :cond_a

    :try_start_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/google/ar/core/InstallActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "message"

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "behavior"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    iput-boolean v1, p0, Lcom/google/ar/core/v;->c:Z

    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string p2, "Failed to launch InstallActivity."

    invoke-direct {p1, p2, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_a
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string p1, "Requesting ARCore installation too rapidly."

    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0
.end method
