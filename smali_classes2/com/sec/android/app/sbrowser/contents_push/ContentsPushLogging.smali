.class public Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging$PushStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->lambda$requestPushBlockStatusLogging$0(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    return-void
.end method

.method private getDurationFromReceiveToClick(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "failed to parse date time: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ContentsPushLogging"

    invoke-static {p1, p2, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    return-object v0
.end method

.method private synthetic lambda$requestPushBlockStatusLogging$0(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V
    .locals 10

    const-string v0, "ContentsPushLogging"

    const-string v1, "requestPushBlockStatusLogging response : "

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getImageLink()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getUrlWithParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&rt="

    invoke-static {p0, p1, p2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/16 p2, 0x1388

    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_1
    :try_start_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw p1
.end method

.method private sendSALogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-nez p5, :cond_0

    const-string p1, "9170"

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "9172"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getOperatorCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "9183"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "9171"

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "9173"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getOperatorCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "9184"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    const-string p0, "9185"

    invoke-static {p0, p4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static sendSALogging(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0
.end method

.method public getIUID()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInternetVersion()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorCode()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SalesCodeUtil;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterForRefererServerLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    invoke-direct {p0, p5, p6}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getDurationFromReceiveToClick(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getUrlWithParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->sendSALogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p4
.end method

.method public getUrlWithParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p1, "&sv=36&ui="

    invoke-static {p4, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getIUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&iv="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getInternetVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&mo="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getDeviceModel()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&oc="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getOperatorCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&cc="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&ed=pu="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&ty="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&nc="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&ti="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&di="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logMarketingAgreement(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getInstance()Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getIUID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "36"

    invoke-virtual {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->requestMarketingAgreementLogging(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public logTermsAgreement(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getInstance()Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getIUID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "36"

    invoke-virtual {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->requestTermsAgreementLogging(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public requestPushBlockStatusLogging(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LJ8/d;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
