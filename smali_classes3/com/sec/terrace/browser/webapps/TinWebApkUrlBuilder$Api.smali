.class public Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Api;
.super Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api"
.end annotation


# static fields
.field static final API_BASE_URL_DEV:Ljava/lang/String; = "https://webapk-api-dev.internet.apps.samsung.com"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final API_BASE_URL_PRD:Ljava/lang/String; = "https://webapk-api.internet.apps.samsung.com"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final API_BASE_URL_STG:Ljava/lang/String; = "https://webapk-api-stg.internet.apps.samsung.com"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final API_VERSION_PREFIX:Ljava/lang/String; = "/v7"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final API_WEBAPK:Ljava/lang/String; = "/webapk"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;-><init>()V

    return-void
.end method

.method private getApiBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "https://webapk-api.internet.apps.samsung.com"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "STG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "PRD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "DEV"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "pref_stg_api_url"

    const-string v0, "https://webapk-api-stg.internet.apps.samsung.com"

    invoke-static {p0, p1, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const-string p1, "pref_prd_api_url"

    invoke-static {p0, p1, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const-string p1, "pref_dev_api_url"

    const-string v0, "https://webapk-api-dev.internet.apps.samsung.com"

    invoke-static {p0, p1, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x107f5 -> :sswitch_2
        0x13682 -> :sswitch_1
        0x14206 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Api;->getApiBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "/v7/webapk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
