.class Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator$InnerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator$InnerReceiver;->this$0:Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceive intent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IntentBasedAuthenticator"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.app.sbrowser.beta.action.biometrics"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator$InnerReceiver;->this$0:Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;Landroid/content/Intent;)V

    return-void
.end method
