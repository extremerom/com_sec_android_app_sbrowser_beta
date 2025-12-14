.class public final LB1/b;
.super Lx1/n;
.source "SourceFile"


# instance fields
.field public d:LK1/c;

.field public e:Lx1/r;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v0}, Lx1/n;-><init>(IIZ)V

    sget-object v0, LK1/c;->d:LK1/c;

    iput-object v0, p0, LB1/b;->d:LK1/c;

    sget-object v0, Lx1/p;->a:Lx1/p;

    invoke-static {v0}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v0

    invoke-static {v0}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object v0

    iput-object v0, p0, LB1/b;->e:Lx1/r;

    return-void
.end method


# virtual methods
.method public final a(Lx1/r;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LB1/b;->e:Lx1/r;

    return-void
.end method

.method public final b()Lx1/r;
    .locals 0

    iget-object p0, p0, LB1/b;->e:Lx1/r;

    return-object p0
.end method

.method public final copy()Lx1/l;
    .locals 4

    new-instance v0, LB1/b;

    invoke-direct {v0}, LB1/b;-><init>()V

    iget-wide v1, p0, LB1/b;->f:J

    iput-wide v1, v0, LB1/b;->f:J

    iget-object v1, p0, LB1/b;->d:LK1/c;

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, LB1/b;->d:LK1/c;

    iget-object v1, v0, Lx1/n;->c:Ljava/util/ArrayList;

    iget-object p0, p0, Lx1/n;->c:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/l;

    invoke-interface {v3}, Lx1/l;->copy()Lx1/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LB1/b;->e:Lx1/r;

    iget-object v1, p0, LB1/b;->d:LK1/c;

    invoke-virtual {p0}, Lx1/n;->c()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EmittableLazyListItem(modifier="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alignment="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", children=[\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n])"

    invoke-static {v2, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
