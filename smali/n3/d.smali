.class public abstract Ln3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string v0, "Unable to start foreground service"

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    iget p1, p1, Lf3/u;->a:I

    if-gt p1, v1, :cond_0

    invoke-static {p2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    iget p1, p1, Lf3/u;->a:I

    if-gt p1, v1, :cond_0

    invoke-static {p2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
