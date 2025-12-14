.class public Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$LoadIconCallback;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;
    }
.end annotation


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;


# instance fields
.field private mCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;

.field private mIconCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$LoadIconCallback;

.field private final mNativeTinExtensionsLoader:J

.field private mProps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mProps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EnableExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->init(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    :goto_0
    return-void
.end method

.method private addProps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mProps:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "addProps: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2, p5, p2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p1, "six_pkg"

    goto :goto_0

    :cond_0
    const-string p1, "crx_only"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_1

    const-string p1, "ON"

    goto :goto_1

    :cond_1
    const-string p1, "OFF"

    :goto_1
    const-string p2, "TerraceExtensionsLoader"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private crxInstallFailed(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;

    if-nez v0, :cond_0

    const-string p0, "crxInstallFailed - No callback to call for "

    const-string p2, ".Aborting!"

    const-string p3, "TerraceExtensionsLoader"

    invoke-static {p0, p1, p2, p3}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;->onCrxInstallFailed(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method private crxInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;

    if-nez v0, :cond_0

    const-string p0, "crxInstalled - No callback to call for "

    const-string p2, ".Aborting!"

    const-string p3, "TerraceExtensionsLoader"

    invoke-static {p0, p1, p2, p3}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;->onCrxInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private crxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;

    if-nez p0, :cond_0

    const-string p0, "crxUninstalled - No callback to call for "

    const-string p2, ".Aborting!"

    const-string p3, "TerraceExtensionsLoader"

    invoke-static {p0, p1, p2, p3}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;->onCrxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->sInstance:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    invoke-direct {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;-><init>()V

    sput-object v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->sInstance:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->sInstance:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onIconLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mIconCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$LoadIconCallback;

    if-nez p0, :cond_0

    const-string p0, "onIconLoaded - No callback to call for "

    const-string p2, ".Aborting!"

    const-string v0, "TerraceExtensionsLoader"

    invoke-static {p0, p1, p2, v0}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$LoadIconCallback;->onIconLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public changeExtensionStatus(Ljava/lang/String;Z)V
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TerraceExtensionsLoader"

    if-nez v0, :cond_0

    const-string p0, "changeExtensionStatus - No native to call for "

    const-string p2, ".Aborting!"

    invoke-static {p0, p1, p2, v1}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "changeExtensionStatus - turning "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v2, " ON"

    goto :goto_0

    :cond_1
    const-string v2, " OFF"

    :goto_0
    invoke-static {v0, v2, v1}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    invoke-interface/range {v3 .. v8}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->changeExtensionStatus(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;Z)V

    return-void
.end method

.method public getInstalledExtensionsProperties()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "TerraceExtensionsLoader"

    if-nez v0, :cond_0

    const-string p0, "getInstalledExtensionsProperties - No native to call. Aborting!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mProps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mProps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v0

    iget-wide v3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    invoke-interface {v0, v3, v4, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->getExtensionsList(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mProps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInstalledExtensionsProperties - got props of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mProps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extensions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mProps:Ljava/util/ArrayList;

    return-object p0

    :cond_2
    const-string p0, "getInstalledExtensionsProperties - No extensions were retrieved"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public initialized()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->initialized(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchInstallCrx(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TerraceExtensionsLoader"

    if-nez v0, :cond_0

    const-string p0, "launchInstallCrx - No native to call for "

    const-string p2, ".Aborting!"

    invoke-static {p0, p1, p2, v1}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "launchInstallCrx - install "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const/4 v8, 0x1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v8}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->launchInstallCrx(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public launchInstallDefaultCrx(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TerraceExtensionsLoader"

    if-nez v0, :cond_0

    const-string p0, "launchInstallDefaultCrx - No native to call for "

    const-string p2, ".Aborting!"

    invoke-static {p0, p1, p2, v1}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "launchInstallDefaultCrx - install "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v8}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->launchInstallCrx(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public launchUninstallCrx(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TerraceExtensionsLoader"

    if-nez v0, :cond_0

    const-string p0, "launchUninstallCrx - No native to call for "

    const-string v0, ".Aborting!"

    invoke-static {p0, p1, v0, v1}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "launchUninstallCrx - uninstall "

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->launchUninstallCrx(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadExtensionIcon(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TerraceExtensionsLoader"

    if-nez v0, :cond_0

    const-string v0, "loadExtensionIcon - No native to call for "

    const-string v2, ".Aborting!"

    invoke-static {v0, p1, v2, v1}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "loadExtensionIcon of "

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->loadExtensionIcon(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;)V

    return-void
.end method

.method public reloadExtension(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TerraceExtensionsLoader"

    if-nez v0, :cond_0

    const-string p0, "reloadExtension - No native to call for "

    const-string v0, ".Aborting!"

    invoke-static {p0, p1, v0, v1}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "reloadExtension : "

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->reloadExtensionInDelayedTime(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;)V

    return-void
.end method

.method public reviveTerminatedExtIfExist(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TerraceExtensionsLoader"

    if-nez v0, :cond_0

    const-string p0, "reviveTerminatedExtIfExist - abort. No native to call"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "reviveTerminatedExtIfExist running"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->reviveTerminatedExtIfExist(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setCrxChangeCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;

    return-void
.end method

.method public setCrxChangeCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$LoadIconCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mIconCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$LoadIconCallback;

    return-void
.end method

.method public terminateExtensionService()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TerraceExtensionsLoader"

    const-string v1, "terminateExtensionService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoaderJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->mNativeTinExtensionsLoader:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;->terminateExtensionService(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;)V

    return-void
.end method
