.class public final LB3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB3/d;
.implements LC3/a;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:LG3/w;

.field public final d:LC3/i;

.field public final e:LC3/i;

.field public final f:LC3/i;


# direct methods
.method public constructor <init>(LH3/c;LG3/m;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LB3/w;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p2, LG3/m;->d:Z

    iput-boolean v0, p0, LB3/w;->a:Z

    iget-object v0, p2, LG3/m;->b:Ljava/lang/Object;

    check-cast v0, LG3/w;

    iput-object v0, p0, LB3/w;->c:LG3/w;

    iget-object v0, p2, LG3/m;->c:LF3/b;

    invoke-virtual {v0}, LF3/b;->f0()LC3/e;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LC3/i;

    iput-object v1, p0, LB3/w;->d:LC3/i;

    iget-object v1, p2, LG3/m;->e:LF3/e;

    check-cast v1, LF3/b;

    invoke-virtual {v1}, LF3/b;->f0()LC3/e;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LC3/i;

    iput-object v2, p0, LB3/w;->e:LC3/i;

    iget-object p2, p2, LG3/m;->f:Ljava/lang/Object;

    check-cast p2, LF3/b;

    invoke-virtual {p2}, LF3/b;->f0()LC3/e;

    move-result-object p2

    move-object v2, p2

    check-cast v2, LC3/i;

    iput-object v2, p0, LB3/w;->f:LC3/i;

    invoke-virtual {p1, v0}, LH3/c;->g(LC3/e;)V

    invoke-virtual {p1, v1}, LH3/c;->g(LC3/e;)V

    invoke-virtual {p1, p2}, LH3/c;->g(LC3/e;)V

    invoke-virtual {v0, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {v1, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {p2, p0}, LC3/e;->a(LC3/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LB3/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC3/a;

    invoke-interface {v1}, LC3/a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final c(LC3/a;)V
    .locals 0

    iget-object p0, p0, LB3/w;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
