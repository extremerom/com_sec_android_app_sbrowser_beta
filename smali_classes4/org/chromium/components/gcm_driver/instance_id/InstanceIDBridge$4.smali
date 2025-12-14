.class Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;
.super Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->deleteToken(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

.field final synthetic val$authorizedEntity:Ljava/lang/String;

.field final synthetic val$requestId:I

.field final synthetic val$scope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iput-object p2, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->val$authorizedEntity:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->val$scope:Ljava/lang/String;

    iput p4, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->val$requestId:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    return-void
.end method


# virtual methods
.method public doBackgroundWork()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->val$authorizedEntity:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->val$scope:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->deleteToken(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->val$authorizedEntity:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->buildSubscriptionUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->isSubscriptionLazy(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->deletePersistedMessagesForSubscriptionId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->c(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->val$authorizedEntity:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/chromium/components/gcm_driver/SubscriptionFlagManager;->buildSubscriptionUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/gcm_driver/SubscriptionFlagManager;->clearFlags(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doBackgroundWork()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->doBackgroundWork()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public sendResultToNative(Ljava/lang/Boolean;)V
    .locals 6

    invoke-static {}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridgeJni;->get()Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-static {v1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->this$0:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    iget v4, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->val$requestId:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;->didDeleteToken(JLorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;IZ)V

    return-void
.end method

.method public bridge synthetic sendResultToNative(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;->sendResultToNative(Ljava/lang/Boolean;)V

    return-void
.end method
