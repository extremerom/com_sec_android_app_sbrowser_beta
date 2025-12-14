.class Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const-string v2, "TinSamsungPayImpl"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {v0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->a(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {v0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->c(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {v0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->b(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "canMakePayment() handled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "walletInfo"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {v0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->b(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->onCanMakePayment(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->h(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->f(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V

    :goto_0
    return-void
.end method
