.class interface abstract Landroidx/window/ExtensionInterfaceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;
    }
.end annotation


# virtual methods
.method public abstract getDeviceState()Landroidx/window/DeviceState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/WindowLayoutInfo;
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract onDeviceStateListenersChanged(Z)V
.end method

.method public abstract onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setExtensionCallback(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V
    .param p1    # Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract validateExtensionInterface()Z
.end method
