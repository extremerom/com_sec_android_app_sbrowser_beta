.class public Lcom/sec/android/app/sbrowser/authentication/SecureDeviceRegistration;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static register(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
