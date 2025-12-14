.class public final Lf3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lf3/w;

.field public final d:Lf3/H;

.field public final e:Lf3/w;

.field public final f:LX4/i;

.field public final g:Lcom/sec/android/app/sbrowser/d;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(LI3/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, LG5/Z2;->a(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lf3/c;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    invoke-static {v0}, LG5/Z2;->a(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lf3/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lf3/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf3/c;->c:Lf3/w;

    new-instance v0, Lf3/H;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf3/c;->d:Lf3/H;

    sget-object v0, Lf3/w;->a:Lf3/w;

    iput-object v0, p0, Lf3/c;->e:Lf3/w;

    new-instance v0, LX4/i;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LX4/i;-><init>(I)V

    iput-object v0, p0, Lf3/c;->f:LX4/i;

    const/4 v0, 0x4

    iput v0, p0, Lf3/c;->h:I

    const v0, 0x7fffffff

    iput v0, p0, Lf3/c;->i:I

    const/16 v0, 0x14

    iput v0, p0, Lf3/c;->k:I

    iget-object p1, p1, LI3/d;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/d;

    iput-object p1, p0, Lf3/c;->g:Lcom/sec/android/app/sbrowser/d;

    const/16 p1, 0x8

    iput p1, p0, Lf3/c;->j:I

    return-void
.end method
