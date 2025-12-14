.class public Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lorg/json/JSONObject;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;->lambda$createParameterBuilder$0(Lorg/json/JSONObject;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;Ljava/lang/String;)V

    return-void
.end method

.method private static createParameterBuilder(Lorg/json/JSONObject;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$createParameterBuilder$0(Lorg/json/JSONObject;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;->putParameter(Lorg/json/JSONObject;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;Ljava/lang/String;)V

    return-void
.end method

.method private static putParameter(Lorg/json/JSONObject;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickAccessSILogHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendSILog error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static sendClickSILog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    const-string v1, "url"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v0, "id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string p1, "fr"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p0

    const/4 p1, 0x5

    const-string p2, ""

    const/16 v0, 0x1389

    invoke-static {p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method

.method public static sendSILog(ILjava/lang/String;ZLorg/json/JSONObject;)V
    .locals 1

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;->createParameterBuilder(Lorg/json/JSONObject;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p3

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p3

    const/4 v0, 0x5

    invoke-static {v0, p2, p0, p1, p3}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method
