.class public final LB3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB3/o;
.implements LC3/a;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Z

.field public final c:Lz3/t;

.field public final d:LC3/n;

.field public e:Z

.field public final f:LB3/c;


# direct methods
.method public constructor <init>(Lz3/t;LH3/c;LG3/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LB3/u;->a:Landroid/graphics/Path;

    new-instance v0, LB3/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB3/c;-><init>(I)V

    iput-object v0, p0, LB3/u;->f:LB3/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p3, LG3/r;->d:Z

    iput-boolean v0, p0, LB3/u;->b:Z

    iput-object p1, p0, LB3/u;->c:Lz3/t;

    new-instance p1, LC3/n;

    iget-object p3, p3, LG3/r;->c:LF3/a;

    iget-object p3, p3, LF3/f;->b:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    invoke-direct {p1, p3}, LC3/n;-><init>(Ljava/util/List;)V

    iput-object p1, p0, LB3/u;->d:LC3/n;

    invoke-virtual {p2, p1}, LH3/c;->g(LC3/e;)V

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LB3/u;->e:Z

    iget-object p0, p0, LB3/u;->c:Lz3/t;

    invoke-virtual {p0}, Lz3/t;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB3/d;

    instance-of v2, v1, LB3/w;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, LB3/w;

    iget-object v3, v2, LB3/w;->c:LG3/w;

    sget-object v4, LG3/w;->SIMULTANEOUSLY:LG3/w;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, LB3/u;->f:LB3/c;

    iget-object v1, v1, LB3/c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, LB3/w;->c(LC3/a;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, LB3/t;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, LB3/t;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, LB3/u;->d:LC3/n;

    iput-object p2, p0, LC3/n;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public final e()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, LB3/u;->e:Z

    iget-object v1, p0, LB3/u;->a:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, LB3/u;->b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, LB3/u;->e:Z

    return-object v1

    :cond_1
    iget-object v0, p0, LB3/u;->d:LC3/n;

    invoke-virtual {v0}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, LB3/u;->f:LB3/c;

    invoke-virtual {v0, v1}, LB3/c;->j(Landroid/graphics/Path;)V

    iput-boolean v2, p0, LB3/u;->e:Z

    return-object v1
.end method
