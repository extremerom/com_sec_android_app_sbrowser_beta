.class public Landroidx/work/multiprocess/RemoteWorkManagerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:Lt3/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteWorkManagerService"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerService;->b:Ljava/lang/String;

    const-string v1, "Binding to RemoteWorkManager"

    invoke-virtual {p1, v0, v1}, Lf3/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerService;->a:Lt3/n;

    return-object p0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lt3/n;

    invoke-direct {v0, p0}, Lt3/n;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerService;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerService;->a:Lt3/n;

    return-void
.end method
