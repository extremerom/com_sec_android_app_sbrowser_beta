.class public Lcom/sec/android/app/sbrowser/extensions/SixSALogger;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static sendDisabledSuggestedStatusLog()V
    .locals 1

    const-string v0, "disabled"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendSuggestedStatusLog(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEmptySuggestedStatusLog()V
    .locals 1

    const-string v0, "empty"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendSuggestedStatusLog(Ljava/lang/String;)V

    return-void
.end method

.method private static sendEventLog(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "601"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "601"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendEventLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "601"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendExtStatusEventLog(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "ext_on"

    goto :goto_0

    :cond_0
    const-string p0, "ext_off"

    :goto_0
    const-string p1, "ext_status"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "6116"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendEventLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendFirstLaunchEventLog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ext_status"

    const-string v1, "ext_first_launch"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "6116"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendEventLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendGetMoreAddOnsEventLog()V
    .locals 3

    const-string v0, "6107"

    const-wide/16 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendEventLog(Ljava/lang/String;J)V

    return-void
.end method

.method public static sendShowPermissionEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ext_name"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "6117"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendEventLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendSuggestedStatusLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "6158"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendTapSuggestedListEventLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "6159"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
