.class public abstract Lorg/chromium/ui/permissions/ContextualNotificationPermissionRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/ui/permissions/ContextualNotificationPermissionRequester;


# direct methods
.method public static getInstance()Lorg/chromium/ui/permissions/ContextualNotificationPermissionRequester;
    .locals 1

    sget-object v0, Lorg/chromium/ui/permissions/ContextualNotificationPermissionRequester;->sInstance:Lorg/chromium/ui/permissions/ContextualNotificationPermissionRequester;

    return-object v0
.end method


# virtual methods
.method public abstract doesAppLevelSettingsAllowSiteNotifications()Z
.end method
