.class public Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPreference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->mPreference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->mPreference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    return-object p0
.end method


# virtual methods
.method public isExpired(J)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->mPreference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getLastRequestedLoggingTimestamp()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sendDetectedThreatsStatistics(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, La9/b;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, La9/b;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "threats"

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p1

    const/16 v0, 0xd

    const/16 v1, 0x32ca

    invoke-static {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method

.method public sendStatistics()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isSupported()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object v3

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isSafeBrowsingEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "en"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->mPreference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getDetectedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "co"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->mPreference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSaferBrowsingDetectedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sco"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;J)V

    const/16 p0, 0xd

    const/16 v0, 0x32c9

    invoke-static {p0, v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    :cond_1
    return-void
.end method
