.class public final Lz1/L;
.super Lx1/n;
.source "SourceFile"


# instance fields
.field public d:J

.field public e:Lz1/b1;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lx1/n;-><init>(IIZ)V

    sget-wide v0, LH0/g;->c:J

    iput-wide v0, p0, Lz1/L;->d:J

    sget-object v0, Lz1/a1;->a:Lz1/a1;

    iput-object v0, p0, Lz1/L;->e:Lz1/b1;

    return-void
.end method


# virtual methods
.method public final a(Lx1/r;)V
    .locals 0

    const-string p0, "<anonymous parameter 0>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string p1, "You cannot set the modifier of an EmittableSizeBox"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lx1/r;
    .locals 0

    iget-object p0, p0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-static {p0}, Lfb/n;->W(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx1/l;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lx1/l;->b()Lx1/r;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lx1/p;->a:Lx1/p;

    invoke-static {p0}, LG5/P3;->c(Lx1/r;)Lx1/r;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final copy()Lx1/l;
    .locals 4

    new-instance v0, Lz1/L;

    invoke-direct {v0}, Lz1/L;-><init>()V

    iget-wide v1, p0, Lz1/L;->d:J

    iput-wide v1, v0, Lz1/L;->d:J

    iget-object v1, p0, Lz1/L;->e:Lz1/b1;

    iput-object v1, v0, Lz1/L;->e:Lz1/b1;

    iget v1, p0, Lz1/L;->f:I

    iput v1, v0, Lz1/L;->f:I

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

    iget-wide v0, p0, Lz1/L;->d:J

    invoke-static {v0, v1}, LH0/g;->c(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz1/L;->e:Lz1/b1;

    invoke-virtual {p0}, Lx1/n;->c()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EmittableSizeBox(size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sizeMode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", children=[\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n])"

    invoke-static {v2, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
