.class Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sendRequest(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SamsungMobileWebAccountHandler"

    const-string v1, "onReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$2;->val$context:Landroid/content/Context;

    const-string p1, "last_push_activation_time"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->remove(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public setFailureMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Getting Samsung Account sync failed rMsg : "

    invoke-static {v0, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ", code : "

    invoke-static {p2, v0, p1}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->d(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x4

    :goto_0
    const/4 v0, -0x8

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.REQUIRED_INTERNET_LOGIN_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    const-string p0, "SamsungMobileWebAccountHandler"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->c()Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->setError(I)V

    return-void
.end method

.method public setNetworkFailure()V
    .locals 1

    const-string p0, "SamsungMobileWebAccountHandler"

    const-string v0, "Failed to get refresh token. (Network Failure)"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->c()Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    move-result-object p0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->setError(I)V

    return-void
.end method
