.class public Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$LazyHolder;
    }
.end annotation


# instance fields
.field private mWebApkInstallerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->mWebApkInstallerMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->mWebApkInstallerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$LazyHolder;->a()Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

    move-result-object v0

    return-object v0
.end method

.method private installAsyncInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/terrace/base/TerraceCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    new-instance v10, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    new-instance v9, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;

    move-object v3, p2

    move-object/from16 v1, p8

    invoke-direct {v9, p0, v1, p2}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;-><init>(Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;Lcom/sec/terrace/base/TerraceCallback;Ljava/lang/String;)V

    move-object v1, v10

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;)V

    iget-object v0, v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->mWebApkInstallerMap:Ljava/util/HashMap;

    move-object v1, p4

    invoke-virtual {v0, p4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->installApk()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->mWebApkInstallerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->cancel()V

    return-void
.end method

.method public installAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/base/TerraceCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->installAsyncInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/terrace/base/TerraceCallback;)V

    return-void
.end method

.method public updateAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/base/TerraceCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->installAsyncInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/terrace/base/TerraceCallback;)V

    return-void
.end method
