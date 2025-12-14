.class public final LE5/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LE5/k;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.google.android.gms.vision.barcode"

    const-string v1, "optional-module-barcode"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LE5/k;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, LE5/k;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    sput-object v2, LE5/r;->b:LE5/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LQ7/h;)V
    .locals 4

    const-string v0, "common"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static {p1}, LQ7/c;->a(Landroid/content/Context;)Ljava/lang/String;

    const-class v1, LE5/v;

    monitor-enter v1

    :try_start_0
    sget-object v2, LE5/v;->b:LE5/v;

    if-nez v2, :cond_0

    new-instance v2, LE5/v;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LE5/v;-><init>(I)V

    sput-object v2, LE5/v;->b:LE5/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    iput-object v0, p0, LE5/r;->a:Ljava/lang/String;

    invoke-static {}, LQ7/e;->a()LQ7/e;

    move-result-object v1

    new-instance v2, LE5/p;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, LE5/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, LQ7/e;->b(Ljava/util/concurrent/Callable;)LR5/p;

    invoke-static {}, LQ7/e;->a()LQ7/e;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LE5/q;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, LE5/q;-><init>(LQ7/h;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LQ7/e;->b(Ljava/util/concurrent/Callable;)LR5/p;

    sget-object p0, LE5/r;->b:LE5/k;

    invoke-virtual {p0, v0}, LE5/k;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, LE5/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Ln5/d;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
