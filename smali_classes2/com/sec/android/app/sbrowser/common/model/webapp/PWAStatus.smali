.class public Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;
    }
.end annotation


# instance fields
.field private mIsInstalling:Z

.field private mListener:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;

.field private mPwaType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mListener:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;

    return-void
.end method


# virtual methods
.method public getPwaType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mPwaType:I

    return p0
.end method

.method public isInstalling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mIsInstalling:Z

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mPwaType:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mIsInstalling:Z

    return-void
.end method

.method public setIsInstalling(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsInstalling : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PWAStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mIsInstalling:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mListener:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;->notifyPWAStatusChanged()V

    return-void
.end method

.method public setPwaType(I)V
    .locals 2

    const-string v0, "PwaType : "

    const-string v1, "PWAStatus"

    invoke-static {p1, v0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mPwaType:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mListener:Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;->notifyPWAStatusChanged()V

    return-void
.end method

.method public setWebApkInstallResult(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mIsInstalling:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setIsInstalling(Z)V

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->mIsInstalling:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setPwaType(I)V

    return-void
.end method
