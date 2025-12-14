.class public abstract Lw/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/ArrayList;

.field public l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/k;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/k;->k:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw/k;->l:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lw/k;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lw/k;->b:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lw/k;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lw/k;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lw/k;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lw/k;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lw/k;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lw/k;->k:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw/k;->l:Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lw/k;->a()V

    invoke-virtual {p0}, Lw/k;->a()V

    iget-object v0, p0, Lw/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lw/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 0

    invoke-virtual {p0}, Lw/k;->a()V

    iput-wide p1, p0, Lw/k;->d:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lw/k;->a()V

    iput-object p1, p0, Lw/k;->h:Ljava/lang/String;

    return-void
.end method

.method public final e(I)V
    .locals 0

    invoke-virtual {p0}, Lw/k;->a()V

    iput p1, p0, Lw/k;->c:I

    return-void
.end method

.method public final f(J)V
    .locals 0

    invoke-virtual {p0}, Lw/k;->a()V

    iput-wide p1, p0, Lw/k;->e:J

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lw/k;->a()V

    iput-object p1, p0, Lw/k;->i:Ljava/lang/String;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lw/k;->a()V

    iput-object p1, p0, Lw/k;->f:Ljava/lang/String;

    return-void
.end method

.method public final i(Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p0}, Lw/k;->a()V

    invoke-virtual {p0}, Lw/k;->a()V

    iget-object v0, p0, Lw/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lw/k;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lw/k;->a()V

    iput-object p1, p0, Lw/k;->j:Ljava/lang/String;

    return-void
.end method
