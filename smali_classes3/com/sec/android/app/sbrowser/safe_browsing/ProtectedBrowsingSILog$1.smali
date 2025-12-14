.class Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->sendStatistics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

.field final synthetic val$currentTimeMillis:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;->val$currentTimeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->a(Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;->val$currentTimeMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateLastRequestedLoggingTimestamp(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->a(Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateDetectedCount(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->a(Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSaferBrowsingDetectedCount(I)V

    return-void
.end method
