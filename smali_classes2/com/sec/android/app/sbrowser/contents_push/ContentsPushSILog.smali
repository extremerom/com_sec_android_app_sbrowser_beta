.class public Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static getDurationFromReceiveToClick(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to parse date time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ContentsPushSILog"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getIUID()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPushUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendGetLessNews(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getIUID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    const-string v2, "hi"

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v1, "pi"

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p0

    const/16 v1, 0x24

    const v2, 0x8ca4

    invoke-static {v1, v0, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method

.method public static sendImageLoadFailed(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getIUID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    const-string v2, "hi"

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v1, "pi"

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p0

    const/16 v1, 0x24

    const v2, 0x8ca5

    invoke-static {v1, v0, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method

.method public static sendPushBlocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getIUID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    const-string v2, "hi"

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v1, "pi"

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v1, "rt"

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p0

    const/16 p1, 0x24

    const v1, 0x8ca3

    invoke-static {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method

.method public static sendPushOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getDurationFromReceiveToClick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getIUID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    const-string v2, "hi"

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v1, "pi"

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v1, "ti"

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p0

    const/16 p1, 0x24

    const v1, 0x8ca2

    invoke-static {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method

.method public static sendPushReceived(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getIUID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    const-string v2, "hi"

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    const-string v1, "pi"

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p0

    const/16 v1, 0x24

    const v2, 0x8ca1

    invoke-static {v1, v0, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method
