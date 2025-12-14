.class public abstract Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;
.super Lorg/chromium/components/policy/PolicyProvider;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sTestRestrictions:Landroid/os/Bundle;


# instance fields
.field private final mAppRestrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static setTestRestrictions(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-string v1, "policy"

    const-string v2, "Test Restrictions: %s"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p0, Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;->sTestRestrictions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getRestrictionChangeIntentAction()Ljava/lang/String;
.end method

.method public refresh()V
    .locals 2

    sget-object v0, Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;->sTestRestrictions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/components/policy/PolicyProvider;->notifySettingsAvailable(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {p0, v1}, Lorg/chromium/components/policy/PolicyProvider;->notifySettingsAvailable(Landroid/os/Bundle;)V

    return-void
.end method

.method public startListeningForPolicyChanges()V
    .locals 4

    invoke-virtual {p0}, Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;->getRestrictionChangeIntentAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lorg/chromium/components/policy/AbstractAppRestrictionsProvider;->mAppRestrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, p0, v2, v0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
