.class Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->createHandlerIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "FingerprintAuthViewAdapter"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string p1, "MSG_ERROR_IDENTIFY"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->d(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Lcom/sec/android/app/sbrowser/auth/AuthView;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Exception : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string p1, "MSG_TASK_TO_BACK"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    :cond_3
    const-string p1, "MSG_CANCEL_IDENTIFY"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Lcom/sec/android/app/sbrowser/auth/Authenticator;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->cancelAuth()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->c(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->c(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/os/CountDownTimer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    :cond_4
    const-string p1, "MSG_START_IDENTIFY"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/AuthParam;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    invoke-direct {p1, v1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;-><init>(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;->setIsDarkMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Lcom/sec/android/app/sbrowser/auth/Authenticator;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->c(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->c(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->c(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Landroid/os/CountDownTimer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_5
    :goto_0
    return v0
.end method
