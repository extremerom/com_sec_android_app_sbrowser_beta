.class Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;
.super Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->getToken(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

.field final synthetic val$authorizedEntity:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$requestId:I

.field final synthetic val$scope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iput-object p2, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$authorizedEntity:Ljava/lang/String;

    iput p3, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$flags:I

    iput-object p4, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$scope:Ljava/lang/String;

    iput p5, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$requestId:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doBackgroundWork()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->doBackgroundWork()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doBackgroundWork()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$authorizedEntity:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->buildSubscriptionUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->storeLazinessInformation(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$authorizedEntity:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/components/gcm_driver/SubscriptionFlagManager;->buildSubscriptionUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$flags:I

    invoke-static {v0, v1}, Lorg/chromium/components/gcm_driver/SubscriptionFlagManager;->setFlags(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$authorizedEntity:Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$scope:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic sendResultToNative(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->sendResultToNative(Ljava/lang/String;)V

    return-void
.end method

.method public sendResultToNative(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridgeJni;->get()Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iget v4, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;->val$requestId:I

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;->didGetToken(JLorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;ILjava/lang/String;)V

    return-void
.end method
