.class Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->registerRpc(Landroid/os/Bundle;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;

.field final synthetic val$responseResult:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;Landroid/os/Looper;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;->this$0:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;

    iput-object p3, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;->val$responseResult:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;->val$responseResult:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
