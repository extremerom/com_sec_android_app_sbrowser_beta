.class public final Lv2/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/j1;


# static fields
.field public static final e:Lv2/J0;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv2/J0;

    sget-object v1, Lv2/Y;->g:Lv2/Y;

    const-string v2, "insertEvent"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, Lv2/Y;->c:I

    iget v3, v1, Lv2/Y;->d:I

    iget-object v1, v1, Lv2/Y;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lv2/J0;-><init>(Ljava/util/List;II)V

    sput-object v0, Lv2/J0;->e:Lv2/J0;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 2

    const-string v0, "pages"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lfb/n;->i0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv2/J0;->a:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/x1;

    iget-object v1, v1, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iput v0, p0, Lv2/J0;->b:I

    iput p2, p0, Lv2/J0;->c:I

    iput p3, p0, Lv2/J0;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)Lv2/z1;
    .locals 9

    iget v0, p0, Lv2/J0;->c:I

    sub-int v0, p1, v0

    const/4 v1, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Lv2/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/x1;

    iget-object v2, v2, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v4, v2, :cond_0

    invoke-static {v0}, Lfb/o;->f(Ljava/util/List;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/x1;

    iget-object v0, v0, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/x1;

    iget v1, p0, Lv2/J0;->c:I

    sub-int v5, p1, v1

    invoke-virtual {p0}, Lv2/J0;->e()I

    move-result v1

    sub-int/2addr v1, p1

    iget p1, p0, Lv2/J0;->d:I

    sub-int/2addr v1, p1

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0}, Lv2/J0;->c()I

    move-result v7

    invoke-virtual {p0}, Lv2/J0;->d()I

    move-result v8

    new-instance p0, Lv2/z1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Lv2/x1;->c:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lv2/z1;-><init>(IIIIII)V

    return-object p0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lv2/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/x1;

    iget-object v2, v2, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/x1;

    iget-object p0, p0, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()I
    .locals 4

    iget-object p0, p0, Lv2/J0;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/x1;

    iget-object p0, p0, Lv2/x1;->a:[I

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v2, v1, :cond_2

    :goto_0
    aget v3, p0, v2

    if-le v0, v3, :cond_1

    move v0, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final d()I
    .locals 4

    iget-object p0, p0, Lv2/J0;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/x1;

    iget-object p0, p0, Lv2/x1;->a:[I

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v2, v1, :cond_2

    :goto_0
    aget v3, p0, v2

    if-ge v0, v3, :cond_1

    move v0, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lv2/J0;->c:I

    iget v1, p0, Lv2/J0;->b:I

    add-int/2addr v0, v1

    iget p0, p0, Lv2/J0;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final f(Lv2/a0;)Lv2/F;
    .locals 10

    const-string v0, "pageEvent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lv2/Y;

    iget-object v1, p0, Lv2/J0;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    check-cast p1, Lv2/Y;

    iget-object v0, p1, Lv2/Y;->b:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv2/x1;

    iget-object v7, v7, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    sget-object v5, Lv2/I0;->a:[I

    iget-object v7, p1, Lv2/Y;->a:Lv2/P;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v3, :cond_5

    const/4 v3, 0x2

    if-eq v5, v3, :cond_3

    const/4 v2, 0x3

    if-ne v5, v2, :cond_2

    iget v2, p0, Lv2/J0;->d:I

    iget v3, p0, Lv2/J0;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget v0, p0, Lv2/J0;->b:I

    add-int/2addr v0, v6

    iput v0, p0, Lv2/J0;->b:I

    iget p1, p1, Lv2/Y;->d:I

    iput p1, p0, Lv2/J0;->d:I

    iget p1, p0, Lv2/J0;->c:I

    add-int/2addr p1, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/x1;

    iget-object v3, v3, Lv2/x1;->b:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    iget p0, p0, Lv2/J0;->d:I

    new-instance v1, Lv2/P0;

    invoke-direct {v1, p1, v0, p0, v2}, Lv2/P0;-><init>(ILjava/util/ArrayList;II)V

    goto/16 :goto_5

    :cond_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    iget v3, p0, Lv2/J0;->c:I

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget v0, p0, Lv2/J0;->b:I

    add-int/2addr v0, v6

    iput v0, p0, Lv2/J0;->b:I

    iget p1, p1, Lv2/Y;->c:I

    iput p1, p0, Lv2/J0;->c:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/x1;

    iget-object v1, v1, Lv2/x1;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, p1}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_2

    :cond_4
    iget p0, p0, Lv2/J0;->c:I

    new-instance v1, Lv2/S0;

    invoke-direct {v1, p1, p0, v3}, Lv2/S0;-><init>(Ljava/util/ArrayList;II)V

    goto/16 :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Paging received a refresh event in the middle of an actively loading generation\nof PagingData. If you see this exception, it is most likely a bug in the library.\nPlease file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    instance-of v0, p1, Lv2/X;

    if-eqz v0, :cond_b

    check-cast p1, Lv2/X;

    new-instance v0, Lzb/d;

    iget v4, p1, Lv2/X;->c:I

    iget v5, p1, Lv2/X;->b:I

    invoke-direct {v0, v5, v4, v3}, Lzb/b;-><init>(III)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/x1;

    iget-object v5, v4, Lv2/x1;->a:[I

    array-length v6, v5

    move v7, v2

    :goto_4
    if-ge v7, v6, :cond_7

    aget v8, v5, v7

    iget v9, v0, Lzb/b;->a:I

    if-gt v9, v8, :cond_8

    iget v9, v0, Lzb/b;->b:I

    if-gt v8, v9, :cond_8

    iget-object v4, v4, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    iget v0, p0, Lv2/J0;->b:I

    sub-int/2addr v0, v3

    iput v0, p0, Lv2/J0;->b:I

    sget-object v1, Lv2/P;->PREPEND:Lv2/P;

    iget-object v2, p1, Lv2/X;->a:Lv2/P;

    iget p1, p1, Lv2/X;->d:I

    if-ne v2, v1, :cond_a

    iget v0, p0, Lv2/J0;->c:I

    iput p1, p0, Lv2/J0;->c:I

    new-instance p0, Lv2/R0;

    invoke-direct {p0, v3, p1, v0}, Lv2/R0;-><init>(III)V

    move-object v1, p0

    goto :goto_5

    :cond_a
    iget v1, p0, Lv2/J0;->d:I

    iput p1, p0, Lv2/J0;->d:I

    new-instance v2, Lv2/Q0;

    iget p0, p0, Lv2/J0;->c:I

    add-int/2addr p0, v0

    invoke-direct {v2, p0, v3, p1, v1}, Lv2/Q0;-><init>(IIII)V

    move-object v1, v2

    :goto_5
    return-object v1

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Paging received an event to process StaticList or LoadStateUpdate while\nprocessing Inserts and Drops. If you see this exception, it is most\nlikely a bug in the library. Please file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lv2/J0;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x3f

    invoke-static/range {v1 .. v6}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lv2/J0;->c:I

    const-string v3, " placeholders), "

    const-string v4, ", ("

    invoke-static {v1, v2, v3, v0, v4}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lv2/J0;->d:I

    const-string v0, " placeholders)]"

    invoke-static {v1, p0, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
