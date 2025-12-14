.class Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider;->getHandoffDataByUrl()Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$mutex:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider;Landroid/app/Activity;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;->val$bundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;->val$mutex:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;->val$activity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HandoffDataProvider"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->retrieveWebStateSynchronous()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isValidHandoffUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "URL is empty or invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getUrlFromWebState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->encodeWebStateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "send web state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->encodeHandoffData(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "send url only"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->encodeHandoffData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "handoffDataByProvider"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffDataProvider$1;->val$mutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
