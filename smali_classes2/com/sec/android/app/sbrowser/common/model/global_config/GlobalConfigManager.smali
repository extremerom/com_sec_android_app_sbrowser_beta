.class public Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;
    }
.end annotation


# static fields
.field protected static final mFeatureMapIndexedByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field mFieldTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mFeatureMapIndexedByName:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mFieldTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static synthetic a(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->lambda$getBoolean$4(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->lambda$putFeature$0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->lambda$getString$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ILandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->lambda$getInt$2(ILandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(JLandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->lambda$getLong$3(JLandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    return-object v0
.end method

.method private static synthetic lambda$getBoolean$4(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getInt$2(ILandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getLong$3(JLandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p3, p0, p1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getString$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getDataFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$putFeature$0(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method


# virtual methods
.method public clearVersion(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    const-string v0, "global_config_preference"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "version"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBaseFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public completePutFeatures()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getFeature(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getAllFeatures()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;",
            ">;"
        }
    .end annotation

    const-string v0, "GlobalConfigManager"

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Timeout for await"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to await putFeature completion"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mFeatureMapIndexedByName:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getBaseFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "pref_global_config_"

    const-string v0, "_"

    invoke-static {p0, p1, v0, p2}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/model/global_config/d;

    invoke-direct {v4, p4}, Lcom/sec/android/app/sbrowser/common/model/global_config/d;-><init>(Z)V

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getValue(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getDataFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "pref_global_config_"

    const-string v0, "_data_"

    invoke-static {p0, p1, v0, p2}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getETagFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "pref_global_config_"

    const-string v0, "_etag_"

    invoke-static {p0, p1, v0, p2}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mFeatureMapIndexedByName:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    return-object p0
.end method

.method public final getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I
    .locals 7

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/model/global_config/c;

    invoke-direct {v4, p4}, Lcom/sec/android/app/sbrowser/common/model/global_config/c;-><init>(I)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getValue(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getLong(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;J)J
    .locals 7

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->LONG:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/model/global_config/b;

    invoke-direct {v4, p4, p5}, Lcom/sec/android/app/sbrowser/common/model/global_config/b;-><init>(J)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getValue(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/model/global_config/a;

    invoke-direct {v4, p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/model/global_config/a;-><init>(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getValue(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getValue(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isValidRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;)Z

    move-result p3

    if-nez p3, :cond_0

    return-object p6

    :cond_0
    :try_start_0
    const-string p3, "global_config_preference"

    const/4 v0, 0x0

    invoke-virtual {p5, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getDataFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p3, p5}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Incorrect type of "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getDataFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalConfigManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p6
.end method

.method public final isSupport(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mFeatureMapIndexedByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "global_config_preference"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "support"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBaseFieldPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isValidRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mFieldTypeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x0

    const-string v1, "GlobalConfigManager"

    if-nez p0, :cond_0

    const-string p0, "Incorrect feature request "

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p3, :cond_1

    const-string p0, "Incorrect type to request "

    invoke-static {p0, p2, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public putFeature(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;)V
    .locals 3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->getFeatureName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mFeatureMapIndexedByName:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->mFieldTypeMap:Ljava/util/Map;

    new-instance v1, La9/b;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, La9/b;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;->getFieldTypeMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Feature is duplicated - "

    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
