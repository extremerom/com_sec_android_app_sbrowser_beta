.class public Lyc/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lzc/b;

.field public final e:Lzc/e;

.field public final f:Lzc/f;

.field public g:I

.field public h:Ljava/util/ArrayDeque;

.field public i:LHc/i;


# direct methods
.method public constructor <init>(ZZZLzc/b;Lzc/e;Lzc/f;)V
    .locals 1

    const-string v0, "typeSystemContext"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lyc/K;->a:Z

    iput-boolean p2, p0, Lyc/K;->b:Z

    iput-boolean p3, p0, Lyc/K;->c:Z

    iput-object p4, p0, Lyc/K;->d:Lzc/b;

    iput-object p5, p0, Lyc/K;->e:Lzc/e;

    iput-object p6, p0, Lyc/K;->f:Lzc/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lyc/K;->h:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p0, p0, Lyc/K;->i:LHc/i;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, LHc/i;->clear()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lyc/K;->h:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lyc/K;->h:Ljava/util/ArrayDeque;

    :cond_0
    iget-object v0, p0, Lyc/K;->i:LHc/i;

    if-nez v0, :cond_1

    new-instance v0, LHc/i;

    invoke-direct {v0}, Lfb/h;-><init>()V

    iput-object v0, p0, Lyc/K;->i:LHc/i;

    :cond_1
    return-void
.end method

.method public final c(LBc/d;)Lyc/d0;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/K;->e:Lzc/e;

    invoke-virtual {p0, p1}, Lzc/e;->a(LBc/d;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final d(LBc/d;)Lyc/w;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/K;->f:Lzc/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyc/w;

    return-object p1
.end method
