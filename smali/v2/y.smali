.class public final Lv2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Lfb/k;

.field public final d:LZ3/x;

.field public e:Lv2/O;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfb/k;

    invoke-direct {v0}, Lfb/k;-><init>()V

    iput-object v0, p0, Lv2/y;->c:Lfb/k;

    new-instance v0, LZ3/x;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LZ3/x;-><init>(I)V

    iput-object v0, p0, Lv2/y;->d:LZ3/x;

    return-void
.end method


# virtual methods
.method public final a(Lv2/a0;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/y;->f:Z

    instance-of v1, p1, Lv2/Y;

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Lv2/y;->c:Lfb/k;

    iget-object v5, p0, Lv2/y;->d:LZ3/x;

    if-eqz v1, :cond_3

    check-cast p1, Lv2/Y;

    iget-object v1, p1, Lv2/Y;->e:Lv2/O;

    invoke-virtual {v5, v1}, LZ3/x;->H(Lv2/O;)V

    iget-object v1, p1, Lv2/Y;->f:Lv2/O;

    iput-object v1, p0, Lv2/y;->e:Lv2/O;

    sget-object v1, Lv2/x;->a:[I

    iget-object v5, p1, Lv2/Y;->a:Lv2/P;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    iget v5, p1, Lv2/Y;->c:I

    iget-object v6, p1, Lv2/Y;->b:Ljava/util/List;

    if-eq v1, v0, :cond_2

    iget p1, p1, Lv2/Y;->d:I

    if-eq v1, v3, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v4}, Lfb/k;->clear()V

    iput p1, p0, Lv2/y;->b:I

    iput v5, p0, Lv2/y;->a:I

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v4, v6}, Lfb/k;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_1
    iput p1, p0, Lv2/y;->b:I

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v4, v6}, Lfb/k;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_2
    iput v5, p0, Lv2/y;->a:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    const/4 p1, -0x1

    invoke-static {p0, v2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->d(III)I

    move-result v0

    new-instance v1, Lzb/c;

    invoke-direct {v1, p0, v0, p1}, Lzb/c;-><init>(III)V

    :goto_0
    iget-boolean p0, v1, Lzb/c;->c:Z

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Lzb/c;->b()I

    move-result p0

    invoke-interface {v6, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Lfb/k;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lv2/X;

    if-eqz v1, :cond_6

    check-cast p1, Lv2/X;

    sget-object v1, Lv2/M;->c:Lv2/M;

    iget-object v6, p1, Lv2/X;->a:Lv2/P;

    invoke-virtual {v5, v6, v1}, LZ3/x;->I(Lv2/P;LEc/g;)V

    sget-object v1, Lv2/x;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    iget v5, p1, Lv2/X;->d:I

    if-eq v1, v0, :cond_5

    if-ne v1, v3, :cond_4

    iput v5, p0, Lv2/y;->b:I

    invoke-virtual {p1}, Lv2/X;->a()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_7

    invoke-virtual {v4}, Lfb/k;->removeLast()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page drop type must be prepend or append"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iput v5, p0, Lv2/y;->a:I

    invoke-virtual {p1}, Lv2/X;->a()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_7

    invoke-virtual {v4}, Lfb/k;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    instance-of v0, p1, Lv2/Z;

    if-eqz v0, :cond_7

    check-cast p1, Lv2/Z;

    iget-object v0, p1, Lv2/Z;->a:Lv2/O;

    invoke-virtual {v5, v0}, LZ3/x;->H(Lv2/O;)V

    iget-object p1, p1, Lv2/Z;->b:Lv2/O;

    iput-object p1, p0, Lv2/y;->e:Lv2/O;

    :cond_7
    :goto_3
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 9

    iget-boolean v0, p0, Lv2/y;->f:Z

    if-nez v0, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lv2/y;->d:LZ3/x;

    invoke-virtual {v1}, LZ3/x;->J()Lv2/O;

    move-result-object v7

    iget-object v1, p0, Lv2/y;->c:Lfb/k;

    invoke-virtual {v1}, Lfb/k;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lv2/Y;->g:Lv2/Y;

    invoke-static {v1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lv2/y;->a:I

    iget v6, p0, Lv2/y;->b:I

    iget-object v8, p0, Lv2/y;->e:Lv2/O;

    new-instance p0, Lv2/Y;

    sget-object v3, Lv2/P;->REFRESH:Lv2/P;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lv2/Y;-><init>(Lv2/P;Ljava/util/List;IILv2/O;Lv2/O;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lv2/Z;

    iget-object p0, p0, Lv2/y;->e:Lv2/O;

    invoke-direct {v1, v7, p0}, Lv2/Z;-><init>(Lv2/O;Lv2/O;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method
