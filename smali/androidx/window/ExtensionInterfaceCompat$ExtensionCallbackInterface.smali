.class public interface abstract Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/ExtensionInterfaceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtensionCallbackInterface"
.end annotation


# virtual methods
.method public abstract onDeviceStateChanged(Landroidx/window/DeviceState;)V
    .param p1    # Landroidx/window/DeviceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/WindowLayoutInfo;)V
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/WindowLayoutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
