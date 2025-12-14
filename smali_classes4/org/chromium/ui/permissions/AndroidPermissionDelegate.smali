.class public interface abstract Lorg/chromium/ui/permissions/AndroidPermissionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract canRequestPermission(Ljava/lang/String;)Z
.end method

.method public abstract handlePermissionResult(I[Ljava/lang/String;[I)Z
.end method

.method public abstract hasPermission(Ljava/lang/String;)Z
.end method

.method public abstract requestPermissions([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
