.class public interface abstract Lcom/sec/terrace/browser/vr/ArCoreShim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/vr/ArCoreShim$UnavailableUserDeclinedInstallationException;,
        Lcom/sec/terrace/browser/vr/ArCoreShim$UnavailableDeviceNotCompatibleException;,
        Lcom/sec/terrace/browser/vr/ArCoreShim$InstallStatus;
    }
.end annotation


# virtual methods
.method public abstract checkAvailability(Landroid/content/Context;)I
.end method

.method public abstract requestInstall(Landroid/app/Activity;Z)I
.end method
