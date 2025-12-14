.class public Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

.field private mDestroyed:Z

.field private final mProvider:Lorg/chromium/content/browser/sms/SmsProviderGms;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/sms/SmsProviderGms;Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mDestroyed:Z

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mProvider:Lorg/chromium/content/browser/sms/SmsProviderGms;

    iput-object p2, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    const-string v0, "com.google.android.gms.auth.api.phone.permission.SEND"

    invoke-static {p2, p0, p1, v0}, Lorg/chromium/base/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->lambda$onReceive$0(ILandroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(ILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->onConsentResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createClient()LV4/b;
    .locals 6

    iget-object v1, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    new-instance p0, Lw5/b;

    sget-object v4, Lb5/c;->U:Lb5/b;

    sget-object v5, Lb5/i;->c:Lb5/i;

    const/4 v2, 0x0

    sget-object v3, LV4/b;->a:Lb5/g;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    return-object p0
.end method

.method public destroy()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mDestroyed:Z

    iget-object v0, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public listen(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    iget-object p1, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mProvider:Lorg/chromium/content/browser/sms/SmsProviderGms;

    invoke-virtual {p1}, Lorg/chromium/content/browser/sms/SmsProviderGms;->getClient()Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->startSmsUserConsent(Ljava/lang/String;)LR5/h;

    move-result-object p1

    new-instance v0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver$1;-><init>(Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;)V

    invoke-virtual {p1, v0}, LR5/h;->c(LR5/d;)LR5/p;

    return-void
.end method

.method public onConsentResult(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mProvider:Lorg/chromium/content/browser/sms/SmsProviderGms;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/sms/SmsProviderGms;->onReceive(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mProvider:Lorg/chromium/content/browser/sms/SmsProviderGms;

    invoke-virtual {p0}, Lorg/chromium/content/browser/sms/SmsProviderGms;->onCancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-boolean p1, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mDestroyed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-static {p2, p1}, Lorg/chromium/base/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->b:I

    if-eqz p1, :cond_5

    const/16 p2, 0xf

    if-eq p1, p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mProvider:Lorg/chromium/content/browser/sms/SmsProviderGms;

    invoke-virtual {p0}, Lorg/chromium/content/browser/sms/SmsProviderGms;->onTimeout()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->mProvider:Lorg/chromium/content/browser/sms/SmsProviderGms;

    invoke-virtual {p2}, Lorg/chromium/content/browser/sms/SmsProviderGms;->getWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p2

    new-instance v0, Lorg/chromium/content/browser/sms/a;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/sms/a;-><init>(Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p1, v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
