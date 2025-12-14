.class Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->syncStateIfNeeded(ZLcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

.field final synthetic val$state:Z

.field final synthetic val$syncedState:Z


# direct methods
.method public constructor <init>(ZZLcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;->val$state:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;->val$syncedState:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "ContentsPushHelper"

    const-string v1, "Failed to initialize SMP in initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onFailure()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;->val$state:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;->val$syncedState:Z

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->updateSubsTopicStateIfNotSynced()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->getSyncTopicListCoolTimeHours()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->syncPushTopicsWithCoolTime(J)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->register()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->deregister()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onSuccess()V

    :cond_3
    return-void
.end method
