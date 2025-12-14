.class public final LRd/a;
.super LRd/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, LRd/c;-><init>()V

    iget-object v0, p0, LRd/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, LRd/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, LRd/c;->b:I

    return-void
.end method

.method public varargs constructor <init>([LRd/n;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, LRd/a;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(LQd/n;LQd/n;)Z
    .locals 3

    iget v0, p0, LRd/c;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, LRd/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LRd/n;

    invoke-virtual {v2, p1, p2}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, LRd/c;->a:Ljava/util/ArrayList;

    const-string v0, ""

    invoke-static {v0, p0}, LPd/b;->f(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
