.class public Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static genSourceTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "-"

    invoke-static {p0, v0, p1}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sendEventLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "201"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "201"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendEventLogWithDimension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SourceTarget"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Mode"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "201"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendExpandEventLog(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "20074"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "20073"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static sendImageTransEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->genSourceTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "20066"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLogWithDimension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendMoveEventLog()V
    .locals 1

    const-string v0, "20075"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public static sendPageTransCountEventLog(I)V
    .locals 1

    const-string v0, "20068"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendPageTransEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->genSourceTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "20067"

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLogWithDimension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendSourceTargetEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->genSourceTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "20009"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLogWithDimension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendSplitModeEventLog(ZZ)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "20070"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "20071"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "20072"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendEventLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static sendTransEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "20066"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendImageTransEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "20067"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendPageTransEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
