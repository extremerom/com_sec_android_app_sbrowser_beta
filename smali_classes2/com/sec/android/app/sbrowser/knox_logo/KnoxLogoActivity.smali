.class public abstract Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"


# instance fields
.field private mKnoxLogo:Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogo;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogo;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->mKnoxLogo:Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogo;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->shouldShowKnoxLogo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->mKnoxLogo:Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogo;->hide()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->shouldShowKnoxLogo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->mKnoxLogo:Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogo;->show()V

    :cond_0
    return-void
.end method

.method public shouldShowKnoxLogo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
