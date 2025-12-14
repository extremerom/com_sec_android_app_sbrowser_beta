.class Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->sendWeeklyLogging(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$2;->this$0:Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$2;->this$0:Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler$2;->val$context:Landroid/content/Context;

    const-string v1, "weekly"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;->storeLastRequestedTimeStamp(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
