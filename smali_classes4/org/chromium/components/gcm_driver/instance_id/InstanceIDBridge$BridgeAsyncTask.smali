.class abstract Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BridgeAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;


# direct methods
.method private constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)V

    return-void
.end method


# virtual methods
.method public abstract doBackgroundWork()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public execute()V
    .locals 2

    invoke-static {}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->getInstance(Ljava/lang/String;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->d(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;)V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->doBackgroundWork()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->sendResultToNative(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;

    invoke-direct {v0, p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask$1;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public abstract sendResultToNative(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method
