.class public final Lt3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:LJ2/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ListenableCallbackRbl"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lt3/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LJ2/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/g;->a:LJ2/i0;

    return-void
.end method

.method public static a(Lt3/f;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lt3/f;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    sget-object v0, Lt3/g;->b:Ljava/lang/String;

    const-string v1, "Unable to notify failures in operation"

    invoke-virtual {p1, v0, v1, p0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lt3/g;->a:LJ2/i0;

    :try_start_0
    iget-object v0, p0, LJ2/i0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/y;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v1, Lt3/f;

    invoke-virtual {p0, v0}, LJ2/i0;->t(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, v0}, Lt3/f;->j0([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lt3/g;->b:Ljava/lang/String;

    const-string v3, "Unable to notify successful operation"

    invoke-virtual {v1, v2, v3, v0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, LJ2/i0;->c:Ljava/lang/Object;

    check-cast p0, Lt3/f;

    invoke-static {p0, v0}, Lt3/g;->a(Lt3/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
