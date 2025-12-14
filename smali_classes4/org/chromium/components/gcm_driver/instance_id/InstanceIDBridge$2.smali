.class Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;
.super Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->getCreationTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

.field final synthetic val$requestId:I


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iput p2, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;->val$requestId:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    return-void
.end method


# virtual methods
.method public doBackgroundWork()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->getCreationTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doBackgroundWork()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;->doBackgroundWork()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public sendResultToNative(Ljava/lang/Long;)V
    .locals 7

    invoke-static {}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridgeJni;->get()Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iget v4, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;->val$requestId:I

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;->didGetCreationTime(JLorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;IJ)V

    return-void
.end method

.method public bridge synthetic sendResultToNative(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;->sendResultToNative(Ljava/lang/Long;)V

    return-void
.end method
