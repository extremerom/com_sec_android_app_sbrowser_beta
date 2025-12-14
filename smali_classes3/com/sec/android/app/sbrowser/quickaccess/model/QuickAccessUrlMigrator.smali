.class public Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;
    }
.end annotation


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUrlFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "quickaccess_url_migration_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->mUrlFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->lambda$migrate$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private synthetic lambda$migrate$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->mUrlFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;

    invoke-direct {v3, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;->fetch(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static store(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const-string v0, "quickaccess_url_migration_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public migrate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V
    .locals 2
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUrlFetcherForTest(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->mUrlFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;

    return-void
.end method
