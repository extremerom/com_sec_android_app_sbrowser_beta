.class public Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthLockScreenActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthLockScreenActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthLockScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public setContentView()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setContentView()V

    const-string v0, "NonSamsungAuthLockScreenActivity "

    const-string v1, "setContentView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0e0520

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    return-void
.end method
