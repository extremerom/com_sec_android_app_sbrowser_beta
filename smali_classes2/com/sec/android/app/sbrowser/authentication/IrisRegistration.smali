.class public Lcom/sec/android/app/sbrowser/authentication/IrisRegistration;
.super Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/authentication/IrisRegistration$IrisRegistrationInternal;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;->mActivity:Landroid/app/Activity;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-static {p0, p0}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/authentication/IrisRegistration$IrisRegistrationInternal;->create(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)Lcom/sec/android/app/sbrowser/authentication/IrisRegistration$IrisRegistrationInternal;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/a;->f(ZZ)I

    return-void
.end method
