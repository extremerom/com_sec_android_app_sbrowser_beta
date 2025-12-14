.class public interface abstract Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;,
        Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.webapk.lib.common.identity_service.IIdentityService"


# virtual methods
.method public abstract getRuntimeHostBrowserPackageName()Ljava/lang/String;
.end method
