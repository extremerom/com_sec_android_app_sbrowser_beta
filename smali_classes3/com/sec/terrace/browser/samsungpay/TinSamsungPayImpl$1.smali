.class Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "TinSamsungPayImpl"

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->e(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p1}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->b(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p1}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->a(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->j(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "TinSamsungPayImpl"

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p1}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->d(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->e(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p1}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->a(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p1}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->c(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p1}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->b(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;->this$0:Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;

    invoke-static {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->b(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->onError()V

    :cond_0
    return-void
.end method
