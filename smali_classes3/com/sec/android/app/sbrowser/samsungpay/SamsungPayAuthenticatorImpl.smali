.class public Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl;
.super Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->create(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;)Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
