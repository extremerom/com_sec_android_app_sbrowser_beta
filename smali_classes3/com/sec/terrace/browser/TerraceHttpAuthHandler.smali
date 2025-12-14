.class public Lcom/sec/terrace/browser/TerraceHttpAuthHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$TerraceObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;,
        Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;,
        Lcom/sec/terrace/browser/TerraceHttpAuthHandler$AutofillObserver;
    }
.end annotation


# static fields
.field private static sHttpAuthObserver:Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;


# instance fields
.field private mAutofillObserver:Lcom/sec/terrace/browser/TerraceHttpAuthHandler$AutofillObserver;

.field private mAutofillPassword:Ljava/lang/String;

.field private mAutofillUsername:Ljava/lang/String;

.field private mNativeTinHttpAuthHandler:J

.field private mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    return-void
.end method

.method private closeDialog()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->sHttpAuthObserver:Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;->closeDialog()V

    :cond_0
    return-void
.end method

.method public static create(J)Lcom/sec/terrace/browser/TerraceHttpAuthHandler;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;-><init>(J)V

    return-object v0
.end method

.method public static getHttpAuthObserver()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->sHttpAuthObserver:Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;

    return-object v0
.end method

.method private onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mAutofillUsername:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mAutofillPassword:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mAutofillObserver:Lcom/sec/terrace/browser/TerraceHttpAuthHandler$AutofillObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$AutofillObserver;->onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    iget-object v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/Terrace;->removeObserver(Lcom/sec/terrace/Terrace$TerraceObserver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public static setHttpAuthObserver(Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->sHttpAuthObserver:Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;

    return-void
.end method

.method private showDialog(Lcom/sec/terrace/Terrace;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    if-eqz p2, :cond_2

    sget-object v0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->sHttpAuthObserver:Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1, p0}, Lcom/sec/terrace/Terrace;->addObserver(Lcom/sec/terrace/Terrace$TerraceObserver;)V

    :try_start_0
    sget-object p1, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->sHttpAuthObserver:Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;

    invoke-interface {p1, p2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;->onHttpAuthRequest(Landroid/content/Context;Lcom/sec/terrace/browser/TerraceHttpAuthHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TerraceHttpAuthHandler"

    const-string v0, "showDialog exception caught"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->cancel()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->cancel()V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->cancel()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerraceHttpAuthHandlerJni;->get()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;->cancelAuth(JLcom/sec/terrace/browser/TerraceHttpAuthHandler;)V

    :cond_0
    return-void
.end method

.method public getCancelButtonText()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerraceHttpAuthHandlerJni;->get()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;->getCancelButtonText(JLcom/sec/terrace/browser/TerraceHttpAuthHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerraceHttpAuthHandlerJni;->get()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;->getMessageBody(JLcom/sec/terrace/browser/TerraceHttpAuthHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerraceHttpAuthHandlerJni;->get()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;->getMessageTitle(JLcom/sec/terrace/browser/TerraceHttpAuthHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getOkButtonText()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerraceHttpAuthHandlerJni;->get()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;->getOkButtonText(JLcom/sec/terrace/browser/TerraceHttpAuthHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getPasswordLabelText()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerraceHttpAuthHandlerJni;->get()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;->getPasswordLabelText(JLcom/sec/terrace/browser/TerraceHttpAuthHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getUsernameLabelText()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerraceHttpAuthHandlerJni;->get()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;->getUsernameLabelText(JLcom/sec/terrace/browser/TerraceHttpAuthHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public onTabHidden(Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->cancel()V

    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerraceHttpAuthHandlerJni;->get()Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler$Natives;->setAuth(JLcom/sec/terrace/browser/TerraceHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNativeTinHttpAuthHandlerForTest(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-wide p1, p0, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->mNativeTinHttpAuthHandler:J

    return-void
.end method
