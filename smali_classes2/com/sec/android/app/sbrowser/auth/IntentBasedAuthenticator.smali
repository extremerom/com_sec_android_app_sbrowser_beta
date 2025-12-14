.class Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator$InnerReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator$InnerReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator$InnerReceiver;-><init>(Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->notifyBiometricResult(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyBiometricResult(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "biometric_result"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyBiometricResult result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IntentBasedAuthenticator"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "error"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "fail"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "success"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "biometric_error_code"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "biometric_error_message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyBiometricResult errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyBiometricResult errorMessage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->notifyBiometricResultWithError(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->notifyBiometricResultWithFail()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->notifyBiometricResultWithSuccess()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f4abffd -> :sswitch_2
        0x2fd71e -> :sswitch_1
        0x5c4d208 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyBiometricResultWithError(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    return-void
.end method

.method private notifyBiometricResultWithFail()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    return-void
.end method

.method private notifyBiometricResultWithSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    return-void
.end method

.method private startWatch()V
    .locals 3

    const-string v0, "IntentBasedAuthenticator"

    const-string v1, "startWatch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.sbrowser.beta.action.biometrics"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopWatch()V
    .locals 2

    const-string v0, "IntentBasedAuthenticator"

    const-string v1, "stopWatch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    const-string v0, "IntentBasedAuthenticator"

    const-string v1, "cancelAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->stopWatch()V

    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 1

    const-string p1, "IntentBasedAuthenticator"

    const-string v0, "startAuth"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/IntentBasedAuthenticator;->startWatch()V

    return-void
.end method
