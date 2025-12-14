.class public abstract Landroidx/databinding/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public notifyPropertyChanged(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
