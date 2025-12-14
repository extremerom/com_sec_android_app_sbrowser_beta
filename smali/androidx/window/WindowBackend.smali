.class public interface abstract Landroidx/window/WindowBackend;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDeviceState()Landroidx/window/DeviceState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getWindowLayoutInfo(Landroid/content/Context;)Landroidx/window/WindowLayoutInfo;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract registerDeviceStateChangeCallback(Ljava/util/concurrent/Executor;Le1/a;)V
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Le1/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerLayoutChangeCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Le1/a;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Le1/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unregisterDeviceStateChangeCallback(Le1/a;)V
    .param p1    # Le1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unregisterLayoutChangeCallback(Le1/a;)V
    .param p1    # Le1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/a;",
            ")V"
        }
    .end annotation
.end method
