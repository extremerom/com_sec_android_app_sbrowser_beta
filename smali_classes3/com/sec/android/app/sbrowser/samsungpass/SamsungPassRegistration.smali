.class public Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration;
.super Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;
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
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;->create(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
