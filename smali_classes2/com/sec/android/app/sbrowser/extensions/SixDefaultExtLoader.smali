.class public Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDefaultExtIDs:Lorg/json/JSONArray;

.field private mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;",
            ">;"
        }
    .end annotation
.end field

.field private mIdsToInstall:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdsToUninstall:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtIDs:Lorg/json/JSONArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    return-void
.end method

.method private copyCrxFiles(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/default_extensions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SixDefaultExtLoader"

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "copyCrxFiles - Failed to create target dir: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->getUpdateUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->getExternalCrx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "copyCrxFiles - skip, crxFilename is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v5, "copyCrxFiles - copy start: "

    const-string v6, ","

    invoke-static {v5, v4, v6}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->getExternalVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyCrxFiles - copy finish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    goto :goto_5

    :catchall_0
    move-exception v4

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    :try_start_7
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    if-eqz v5, :cond_3

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v5

    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyCrxFiles - IOException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "copyCrxFiles - IOException"

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 1

    new-array p0, p3, [B

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleUpdateInstalledExt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getNativeExtVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-string v4, "SixDefaultExtLoader"

    const-string v5, ", "

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleUpdateInstalledExt - No update (Dev Ext): "

    invoke-static {p1, p0, v5, v1, v4}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, " \u2192 "

    if-eqz v0, :cond_7

    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    goto :goto_2

    :cond_1
    if-nez v6, :cond_3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleUpdateInstalledExt - No update (Same ver): "

    invoke-static {p1, p0, v5, v1, v4}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "handleUpdateInstalledExt - Updating install source to default"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "default_ext"

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setInstallSource(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->flushSixAppData()V

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isFromWebStore()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleUpdateInstalledExt - No update (Plugin Ext): "

    invoke-static {p2, p0, v5, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1, v4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleUpdateInstalledExt - Downgrade: "

    invoke-static {p1, p0, v5, v1, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p2, v4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_6
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleUpdateInstalledExt - No update: "

    invoke-static {p2, p0, v5, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1, v4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleUpdateInstalledExt - will update: "

    invoke-static {p1, p0, v5, v1, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p2, v4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkUpdates()V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->initialized()Z

    move-result v0

    const-string v1, "SixDefaultExtLoader"

    if-nez v0, :cond_0

    const-string p0, "checkUpdates - abort. native uninitialized"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "checkUpdates - Not installed. will be installed: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->getExternalVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->handleUpdateInstalledExt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "checkUpdates - no default ext to install"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkUpdates - idToInstall: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "checkUpdates - idToUninstall: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    return-void
.end method

.method public collectDefaultCrxInfo(Landroid/content/Context;)Z
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "collectDefaultCrxInfo - exception: "

    const-string v0, "external_crx"

    const-string v3, "external_update_url"

    const-string v4, "external_version"

    const-string v5, "SixDefaultExtLoader"

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "external_extensions.json"

    move-object/from16 v8, p1

    invoke-static {v8, v7}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->readJson(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "collectDefaultCrxInfo - failed to read external_extensions.json"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtIDs:Lorg/json/JSONArray;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_4

    :cond_1
    move v8, v6

    :goto_0
    iget-object v9, v1, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtIDs:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtIDs:Lorg/json/JSONArray;

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "collectDefaultCrxInfo - failed to read ext info: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_2
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_3
    move-object v12, v13

    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "collectDefaultCrxInfo - retrieved : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_4
    move-object v15, v13

    :goto_2
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_5
    invoke-direct {v14, v15, v13, v12}, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v9, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    const-string v0, "collectDefaultCrxInfo - No keys were retrieved"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return v6

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "collectDefaultCrxInfo - no default ext given"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    const/4 v0, 0x1

    return v0

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtIDs:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    :cond_2
    return-void
.end method

.method public getDefaultExtIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getGivenDefaultExtVer(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->getExternalVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdsToInstall()Ljava/util/HashSet;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    return-object p0
.end method

.method public getIdsToUninstall()Ljava/util/HashSet;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    return-object p0
.end method

.method public installDefaultExts(Landroid/content/Context;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SixDefaultExtLoader"

    if-eqz v0, :cond_0

    const-string p0, "installDefaultExts - no ext to install"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->initialized()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "installDefaultExts - abort. native uninitialized"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "abort. native uninitialized"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->copyCrxFiles(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/default_extensions/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->getExternalCrx()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->launchInstallDefaultCrx(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isGivenDefaultExt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->getExternalVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInDefaultExtList(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mDefaultExtMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeInstalledId(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToInstall:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "removeInstalledId - removed: "

    const-string v0, "SixDefaultExtLoader"

    invoke-static {p0, p1, v0}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeUninstalledId(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "removeUninstalledId - removed: "

    const-string v0, "SixDefaultExtLoader"

    invoke-static {p0, p1, v0}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public uninstallDefaultExts()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SixDefaultExtLoader"

    if-eqz v0, :cond_0

    const-string p0, "uninstallDefaultExts - no ext to uninstall"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->initialized()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "uninstallDefaultExts - abort. native uninitialized"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->mIdsToUninstall:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;->launchUninstallCrx(Ljava/lang/String;)Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
