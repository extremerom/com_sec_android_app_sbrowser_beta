.class Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->execute(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$callback:LI/d;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$onClientAppError:Ljava/lang/Runnable;

.field final synthetic val$onClientAppUnavailable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->this$0:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$args:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$callback:LI/d;

    iput-object p5, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$onClientAppError:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$onClientAppUnavailable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$command:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$args:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$callback:LI/d;

    invoke-interface {p2, p1, v0, v1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "DigitalGoods"

    const-string p2, "Exception communicating with client."

    invoke-static {p1, p2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$onClientAppError:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const-string p2, "success"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$onClientAppError:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public onNoTwaFound()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;->val$onClientAppUnavailable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
