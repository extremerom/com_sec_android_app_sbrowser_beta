.class public Lcom/sec/android/app/sbrowser/auth/AuthParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsDarkMode:Z

.field private mIsDesktopMode:Z

.field private mPassword:Ljava/lang/String;

.field private mPreview:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPreview:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mIsDesktopMode:Z

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public getPreview()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPreview:Landroid/view/View;

    return-object p0
.end method

.method public getPreviewBundle()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPreview:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "preview"

    if-nez v1, :cond_0

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPreview:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPreview:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "x"

    aget v2, v1, v2

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "y"

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mPreview:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const-string v1, "windowToken"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public isDarkMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mIsDarkMode:Z

    return p0
.end method

.method public isDesktopMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mIsDesktopMode:Z

    return p0
.end method

.method public setIsDarkMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthParam;->mIsDarkMode:Z

    return-void
.end method
