.class Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static volatile sSmpClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public static getMatchedFcmClientList(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->getSmpClientList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;

    invoke-interface {v2, p0}, Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;->isMyFcmMessage(Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getMatchedSppClientList(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->getSmpClientList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;

    invoke-interface {v2, p0}, Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;->isMySppMessage(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "smp_configuration_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSmpClientList()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->sSmpClientList:Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->sSmpClientList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->sSmpClientList:Ljava/util/List;

    sget-object v1, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->sSmpClientList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/push/SyncSmpClient;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/scloud/push/SyncSmpClient;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->sSmpClientList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->sSmpClientList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->sSmpClientList:Ljava/util/List;

    return-object v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "smp_is_supported"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setSupported(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "smp_is_supported"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
