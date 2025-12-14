.class Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$2;->this$0:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$2;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$2;->this$0:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->a(Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;)Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$2;->val$data:Landroid/content/Intent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    return-void
.end method
