.class public final Lz0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/M;
.implements Lz0/z;


# instance fields
.field public final synthetic a:Lz0/p;

.field public final synthetic b:Lz0/t;


# direct methods
.method public constructor <init>(Lz0/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/n;->b:Lz0/t;

    iget-object p1, p1, Lz0/t;->h:Lz0/p;

    iput-object p1, p0, Lz0/n;->a:Lz0/p;

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 0

    iget-object p0, p0, Lz0/n;->a:Lz0/p;

    invoke-virtual {p0}, Lz0/p;->f()Z

    move-result p0

    return p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Lz0/n;->a:Lz0/p;

    iget p0, p0, Lz0/p;->c:F

    return p0
.end method

.method public final getLayoutDirection()LH0/k;
    .locals 0

    iget-object p0, p0, Lz0/n;->a:Lz0/p;

    iget-object p0, p0, Lz0/p;->a:LH0/k;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;Lsb/n;)Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lz0/n;->b:Lz0/t;

    iget-object v0, p0, Lz0/t;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->m:LB0/F;

    invoke-virtual {v0}, LB0/F;->w()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lz0/t;->m:Lc0/d;

    iget v1, v0, Lc0/d;->c:I

    iget v2, p0, Lz0/t;->e:I

    if-lt v1, v2, :cond_7

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, p1}, Lc0/d;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v1, v0, v2

    aput-object p1, v0, v2

    :goto_1
    iget v0, p0, Lz0/t;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lz0/t;->e:I

    iget-object v0, p0, Lz0/t;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p1, p2}, Lz0/t;->f(Ljava/lang/Object;Lsb/n;)Lz0/s;

    move-result-object p2

    iget-object v2, p0, Lz0/t;->l:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iget-object p2, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p2, p2, LB0/G;->c:LB0/v;

    sget-object v2, LB0/v;->LayingOut:LB0/v;

    if-ne p2, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x2

    invoke-static {p0, v1, p2}, Landroidx/compose/ui/node/a;->v(Landroidx/compose/ui/node/a;ZI)V

    :cond_4
    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/a;

    if-eqz p0, :cond_5

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    invoke-virtual {p0}, LB0/F;->w()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lc0/a;

    iget-object p2, p1, Lc0/a;->a:Lc0/d;

    iget p2, p2, Lc0/d;->c:I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_6

    invoke-virtual {p1, v0}, Lc0/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB0/F;

    iget-object v2, v2, LB0/F;->s:LB0/G;

    iput-boolean v1, v2, LB0/G;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_6
    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error: currentPostLookaheadIndex cannot be greater than the size of thepostLookaheadComposedSlotIds list."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(F)I
    .locals 0

    iget-object p0, p0, Lz0/n;->a:Lz0/p;

    invoke-interface {p0, p1}, LH0/b;->j(F)I

    move-result p0

    return p0
.end method

.method public final l(IILjava/util/Map;Lsb/k;)Lz0/y;
    .locals 0

    iget-object p0, p0, Lz0/n;->a:Lz0/p;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz0/p;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0
.end method

.method public final m()F
    .locals 0

    iget-object p0, p0, Lz0/n;->a:Lz0/p;

    iget p0, p0, Lz0/p;->b:F

    return p0
.end method

.method public final p(F)F
    .locals 0

    iget-object p0, p0, Lz0/n;->a:Lz0/p;

    invoke-virtual {p0}, Lz0/p;->m()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method
