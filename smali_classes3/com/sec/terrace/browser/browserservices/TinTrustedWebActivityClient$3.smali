.class Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->startListeningLocationUpdates(Ljava/lang/String;ZLI/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

.field final synthetic val$highAccuracy:Z

.field final synthetic val$locationCallback:LI/d;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;ZLI/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    iput-boolean p2, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->val$highAccuracy:Z

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->val$locationCallback:LI/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "enableHighAccuracy"

    iget-boolean v1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->val$highAccuracy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    const-string v1, "startLocation"

    iget-object v2, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->val$locationCallback:LI/d;

    invoke-static {v0, p2, v1, p1, v2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->b(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "success"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->val$locationCallback:LI/d;

    const-string p2, "Failed to request location updates"

    invoke-static {p1, p0, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->a(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;LI/d;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onNoTwaFound()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;->val$locationCallback:LI/d;

    const-string v1, "NoTwaFound"

    invoke-static {v0, p0, v1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->a(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;LI/d;Ljava/lang/String;)V

    return-void
.end method
