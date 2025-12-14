.class Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;->this$1:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;->this$1:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;

    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;->this$1:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;

    iget-object v1, v1, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;->this$1:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;

    iget-object v1, v1, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->getInstance(Ljava/lang/String;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->d(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;->this$1:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->doBackgroundWork()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;->this$1:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;

    iget-object v0, v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;->this$1:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;

    invoke-virtual {p0, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->sendResultToNative(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
