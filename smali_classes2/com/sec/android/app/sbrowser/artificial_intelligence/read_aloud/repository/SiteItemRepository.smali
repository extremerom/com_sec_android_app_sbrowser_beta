.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;
    }
.end annotation


# static fields
.field private static final SITE_ITEM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->SITE_ITEM_MAP:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->lambda$loadSupportSites$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;)V

    return-void
.end method

.method public static applyReadArticlesAloudNewSupportSites(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/ByteArrayOutputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ai_read_articles_aloud_support_site.json"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->loadSupportSites(Landroid/content/Context;)V

    return-void
.end method

.method public static findSiteItemByDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->SITE_ITEM_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->loadSupportSites(Landroid/content/Context;)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;

    return-object p0
.end method

.method private static synthetic lambda$loadSupportSites$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->SITE_ITEM_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getTopDomainByHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static declared-synchronized loadSupportSites(Landroid/content/Context;)V
    .locals 8

    const-string v0, "loadSupportSites(): Exception in parsing -> "

    const-string v1, "loadSupportSites(): Site list size -> "

    const-string v2, ", s: 1)"

    const-string v3, "Use script imported into global config (g:"

    const-class v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;

    monitor-enter v4

    :try_start_0
    const-string v5, "ai_read_articles_aloud_support_site.json"

    invoke-static {p0, v5}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->getReadArticlesAloudScriptVersion(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    const-string v6, "si__SiteItemRepository"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ai_read_articles_aloud_support_site.json"

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    const-string v2, "artificial_intelligence/ai_read_articles_aloud_support_site.json"

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "si__SiteItemRepository"

    const-string v0, "loadSupportSites(): RuntimeException occurs"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :cond_1
    :goto_1
    :try_start_3
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;

    invoke-virtual {p0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    :try_start_4
    const-string v0, "si__SiteItemRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lca/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lca/c;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit v4

    return-void

    :catch_1
    move-exception p0

    :try_start_5
    const-string v1, "si__SiteItemRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v4

    return-void

    :goto_2
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method
