.class Lorg/chromium/components/gcm_driver/GCMDriver$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/gcm_driver/GCMDriver;->register(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$senderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

    iput-object p2, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->val$senderId:Ljava/lang/String;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/GCMDriver$1;->doInBackground()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->val$appId:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

    invoke-static {v1}, Lorg/chromium/components/gcm_driver/GCMDriver;->b(Lorg/chromium/components/gcm_driver/GCMDriver;)Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->val$senderId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;->subscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM subscription failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->val$senderId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GCMDriver"

    invoke-static {v1, p0, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/components/gcm_driver/GCMDriver$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lorg/chromium/components/gcm_driver/GCMDriverJni;->get()Lorg/chromium/components/gcm_driver/GCMDriver$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

    invoke-static {v1}, Lorg/chromium/components/gcm_driver/GCMDriver;->a(Lorg/chromium/components/gcm_driver/GCMDriver;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

    iget-object v4, p0, Lorg/chromium/components/gcm_driver/GCMDriver$1;->val$appId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 v6, p0, 0x1

    move-object v5, p1

    invoke-interface/range {v0 .. v6}, Lorg/chromium/components/gcm_driver/GCMDriver$Natives;->onRegisterFinished(JLorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
