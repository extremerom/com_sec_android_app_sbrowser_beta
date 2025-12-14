.class public Lorg/chromium/content/browser/sms/SmsProviderGms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBackend:I

.field private mClient:Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;

.field private mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

.field private final mSmsProviderGmsAndroid:J

.field private mUserConsentReceiver:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

.field private mVerificationReceiver:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

.field private mWindow:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(JIZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mSmsProviderGmsAndroid:J

    iput p3, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mBackend:I

    new-instance p1, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/sms/SmsProviderGms;)V

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    if-eqz p4, :cond_0

    new-instance p1, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    iget-object p2, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    invoke-direct {p1, p0, p2}, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;-><init>(Lorg/chromium/content/browser/sms/SmsProviderGms;Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;)V

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mVerificationReceiver:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    :cond_1
    new-instance p1, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    iget-object p2, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    invoke-direct {p1, p0, p2}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;-><init>(Lorg/chromium/content/browser/sms/SmsProviderGms;Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;)V

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mUserConsentReceiver:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mVerificationReceiver:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mUserConsentReceiver:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    const-string p2, "SmsProviderGms"

    const-string p3, "construction successfull %s, %s"

    invoke-static {p2, p3, p1, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static create(JI)Lorg/chromium/content/browser/sms/SmsProviderGms;
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SmsProviderGms"

    const-string v3, "Creating SmsProviderGms"

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, La5/b;->d:La5/b;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0xc1961b0

    invoke-virtual {v1, v3, v2}, La5/c;->b(ILandroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Lorg/chromium/content/browser/sms/SmsProviderGms;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/chromium/content/browser/sms/SmsProviderGms;-><init>(JIZ)V

    return-object v1
.end method

.method private destroy()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mVerificationReceiver:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;->destroy()V

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mUserConsentReceiver:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->destroy()V

    :cond_1
    return-void
.end method

.method private setClientAndWindow(Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mClient:Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;

    iput-object p2, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->setContext(Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;)V

    return-void
.end method


# virtual methods
.method public getClient()Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mClient:Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mUserConsentReceiver:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->createClient()LV4/b;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mVerificationReceiver:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;->createClient()LV4/a;

    move-result-object v2

    :cond_2
    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;-><init>(LV4/b;LV4/a;)V

    iput-object v0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mClient:Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;

    return-object v0
.end method

.method public getWindow()Lorg/chromium/ui/base/WindowAndroid;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    return-object p0
.end method

.method public listen(Lorg/chromium/ui/base/WindowAndroid;Z)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mVerificationReceiver:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mBackend:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;->listen(Z)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mUserConsentReceiver:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget p0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mBackend:I

    const/4 p2, 0x2

    if-eq p0, p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->listen(Lorg/chromium/ui/base/WindowAndroid;)V

    :cond_2
    return-void
.end method

.method public onCancel()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/sms/SmsProviderGmsJni;->get()Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mSmsProviderGmsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;->onCancel(J)V

    return-void
.end method

.method public onMethodNotAvailable(Z)V
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mBackend:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/sms/SmsProviderGms;->onNotAvailable()V

    :cond_1
    return-void
.end method

.method public onNotAvailable()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/sms/SmsProviderGmsJni;->get()Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mSmsProviderGmsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;->onNotAvailable(J)V

    return-void
.end method

.method public onReceive(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/sms/SmsProviderGmsJni;->get()Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mSmsProviderGmsAndroid:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;->onReceive(JLjava/lang/String;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/sms/SmsProviderGmsJni;->get()Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mSmsProviderGmsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;->onTimeout(J)V

    return-void
.end method

.method public verificationReceiverFailed(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SmsProviderGms"

    const-string v1, "DestroyVerificationReceiver"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mVerificationReceiver:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;->destroy()V

    :cond_1
    return-void
.end method

.method public verificationReceiverSucceeded(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SmsProviderGms"

    const-string v1, "DestroyUserConsentReceiver"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/content/browser/sms/SmsProviderGms;->mUserConsentReceiver:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->destroy()V

    :cond_1
    return-void
.end method
