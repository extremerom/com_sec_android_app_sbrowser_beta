.class Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/sms/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebOTPServiceContext"
.end annotation


# instance fields
.field private final mSmsProviderGms:Lorg/chromium/content/browser/sms/SmsProviderGms;

.field private mUserConsentReceiver:Landroid/content/BroadcastReceiver;

.field private mVerificationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/sms/SmsProviderGms;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->mSmsProviderGms:Lorg/chromium/content/browser/sms/SmsProviderGms;

    return-void
.end method

.method private onRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.SMS_CODE_RETRIEVED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->mVerificationReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->mUserConsentReceiver:Landroid/content/BroadcastReceiver;

    :goto_0
    return-void
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->onRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->onRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-super/range {p0 .. p5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->mVerificationReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->mVerificationReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->mUserConsentReceiver:Landroid/content/BroadcastReceiver;

    :goto_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
