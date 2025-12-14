.class Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$1;
.super LH6/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->onNoResponseServer(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$1;->this$0:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(LH6/o;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$1;->this$0:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->a(Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;)Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$1;->val$data:Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p0, p2}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, LH6/o;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$1;->onDismissed(LH6/o;I)V

    return-void
.end method
