.class Lcom/sec/android/app/sbrowser/backup/DataHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/backup/DataHelper;->initTerraceHelper(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/backup/DataHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/backup/DataHelper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;->this$0:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    const-string v1, "DataHelper"

    if-nez v0, :cond_0

    const-string v0, "TerraceHelper not initialized! nothing done!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->initializePreferencesValues()V

    const-string v0, "initializePreferencesValues done!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;->this$0:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->b(Lcom/sec/android/app/sbrowser/backup/DataHelper;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;->this$0:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->a(Lcom/sec/android/app/sbrowser/backup/DataHelper;)Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;->this$0:Lcom/sec/android/app/sbrowser/backup/DataHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->a(Lcom/sec/android/app/sbrowser/backup/DataHelper;)Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;->onComplete()V

    :cond_1
    return-void
.end method
