.class public Lorg/chromium/components/policy/AppRestrictionsProvider;
.super Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static getApplicationRestrictionsFromUserManager(Landroid/os/UserManager;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "AppResProvider"

    const-string v1, "#getApplicationRestrictionsFromUserManager() "

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/policy/AppRestrictionsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-static {p0, p1}, Lorg/chromium/components/policy/AppRestrictionsProvider;->getApplicationRestrictionsFromUserManager(Landroid/os/UserManager;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getRestrictionChangeIntentAction()Ljava/lang/String;
    .locals 0

    const-string p0, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    return-object p0
.end method
