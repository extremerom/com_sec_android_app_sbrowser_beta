.class public final Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;",
        "",
        "<init>",
        "()V",
        "getSyncTopicListCoolTimeHours",
        "",
        "isNeedNewBadge",
        "",
        "isEnableTopic",
        "needTncAgreement",
        "getContentsPushConfig",
        "Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContentsPushConfig()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "ContentsPush2"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getFeature(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;

    return-object p0
.end method

.method public final getSyncTopicListCoolTimeHours()J
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->getContentsPushConfig()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;

    move-result-object p0

    const-wide/16 v0, 0xa8

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sync_topic_list_cool_time_hours"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final isEnableTopic()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->getContentsPushConfig()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "enable_topic"

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final isNeedNewBadge()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->getContentsPushConfig()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "need_new_badge"

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final needTncAgreement()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->getContentsPushConfig()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushConfig;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "need_tnc_agreement"

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method
