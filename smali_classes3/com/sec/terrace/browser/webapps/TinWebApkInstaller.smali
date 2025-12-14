.class public Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$Natives;
    }
.end annotation


# instance fields
.field private mNativePointer:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->mNativePointer:J

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->lambda$installWebApkAsync$0(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->notify(I)V

    return-void
.end method

.method public static create(J)Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;-><init>(J)V

    return-object v0
.end method

.method private getDownloadUrl(Ljava/lang/String;ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;->setPackageName(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;->setToken(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;->setVersion(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;->setIsUpdate(Z)Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;->setSource(I)Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    :catch_0
    return p0
.end method

.method private isWebApkInstalled(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$installWebApkAsync$0(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->notify(I)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object p3

    const-string v0, "webapk-"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$1;-><init>(Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;I)V

    invoke-virtual {p3, p1, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->register(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;)V

    return-void
.end method

.method private notify(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkInstallerJni;->get()Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->mNativePointer:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$Natives;->onInstallFinished(JLcom/sec/terrace/browser/webapps/TinWebApkInstaller;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->mNativePointer:J

    return-void
.end method

.method public getNativePointer()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->mNativePointer:J

    return-wide v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance p0, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Api;

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Api;-><init>()V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Api;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public installWebApkAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->isWebApkInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->notify(I)V

    return-void

    :cond_0
    new-instance v9, LN4/g;

    const/4 v1, 0x3

    move-object v6, p1

    move/from16 v5, p7

    invoke-direct {v9, p0, p1, v5, v1}, LN4/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->getInstance()Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

    move-result-object v7

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->getDownloadUrl(Ljava/lang/String;ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, v0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->installAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/base/TerraceCallback;)V

    return-void
.end method

.method public showFailedNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v7, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$2;

    move-object v0, p0

    invoke-direct {v7, p0}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$2;-><init>(Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->getInstance()Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

    move-result-object v6

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->getDownloadUrl(Ljava/lang/String;ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    move-object v0, v6

    move-object v1, v8

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->updateAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/base/TerraceCallback;)V

    return-void
.end method
