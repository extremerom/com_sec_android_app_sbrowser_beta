.class public final Lp3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Lq3/j;

.field public final b:Landroid/content/Context;

.field public final c:Lo3/q;

.field public final d:Lf3/t;

.field public final e:Lp3/s;

.field public final f:Lr3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp3/r;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo3/q;Lf3/t;Lp3/s;Lr3/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp3/r;->a:Lq3/j;

    iput-object p1, p0, Lp3/r;->b:Landroid/content/Context;

    iput-object p2, p0, Lp3/r;->c:Lo3/q;

    iput-object p3, p0, Lp3/r;->d:Lf3/t;

    iput-object p4, p0, Lp3/r;->e:Lp3/s;

    iput-object p5, p0, Lp3/r;->f:Lr3/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lp3/r;->c:Lo3/q;

    iget-boolean v0, v0, Lo3/q;->q:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lq3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lp3/r;->f:Lr3/a;

    iget-object v2, v1, Lr3/a;->d:LH4/s;

    new-instance v3, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v4, 0x11

    invoke-direct {v3, v4, p0, v0}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, LH4/s;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Lc5/A;

    const/16 v3, 0xb

    invoke-direct {v2, v3, p0, v0}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v1, Lr3/a;->d:LH4/s;

    invoke-virtual {v0, v2, p0}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lp3/r;->a:Lq3/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lq3/j;->j(Ljava/lang/Object;)Z

    return-void
.end method
