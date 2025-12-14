.class public final LQd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(LQd/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LQd/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQd/b;->c:Ljava/lang/Iterable;

    const/4 p1, 0x0

    iput p1, p0, LQd/b;->b:I

    return-void
.end method

.method public constructor <init>(LY5/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LQd/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object p1, p0, LQd/b;->c:Ljava/lang/Iterable;

    const/4 p1, -0x1

    iput p1, p0, LQd/b;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, LQd/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LQd/b;->b:I

    iget-object p0, p0, LQd/b;->c:Ljava/lang/Iterable;

    check-cast p0, LY5/c;

    invoke-virtual {p0}, LY5/c;->A0()V

    iget-object p0, p0, LY5/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :goto_1
    :pswitch_0
    iget v0, p0, LQd/b;->b:I

    iget-object v1, p0, LQd/b;->c:Ljava/lang/Iterable;

    check-cast v1, LQd/c;

    iget v2, v1, LQd/c;->a:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v2, v1, LQd/c;->b:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-static {v0}, LQd/c;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LQd/b;->b:I

    add-int/2addr v0, v3

    iput v0, p0, LQd/b;->b:I

    goto :goto_1

    :cond_1
    iget p0, p0, LQd/b;->b:I

    iget v0, v1, LQd/c;->a:I

    if-ge p0, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 6

    iget v0, p0, LQd/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, LQd/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, LQd/b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LQd/b;->b:I

    iget-object p0, p0, LQd/b;->c:Ljava/lang/Iterable;

    check-cast p0, LY5/c;

    invoke-virtual {p0}, LY5/c;->A0()V

    invoke-virtual {p0, v1}, LY5/c;->z0(I)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, LY5/c;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-ltz v1, :cond_2

    iget-object v5, p0, LY5/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v1, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, LY5/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget v0, v4, Lcom/google/android/gms/common/data/DataHolder;->h:I

    iget-object v3, p0, LY5/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    sub-int/2addr v0, v3

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, LY5/c;->c:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, LY5/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v1}, LY5/c;->z0(I)I

    move-result p0

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v4, p0}, Lcom/google/android/gms/common/data/DataHolder;->b(I)I

    move v3, v0

    :cond_2
    :goto_2
    new-instance p0, LZ5/m;

    const/4 v0, 0x0

    invoke-direct {p0, v4, v2, v3, v0}, LZ5/m;-><init>(Lcom/google/android/gms/common/data/DataHolder;III)V

    return-object p0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, LQd/b;->b:I

    const-string v1, "Cannot advance the iterator beyond "

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, LQd/a;

    iget-object v1, p0, LQd/b;->c:Ljava/lang/Iterable;

    check-cast v1, LQd/c;

    iget-object v2, v1, LQd/c;->b:[Ljava/lang/String;

    iget v3, p0, LQd/b;->b:I

    aget-object v2, v2, v3

    iget-object v4, v1, LQd/c;->c:[Ljava/lang/Object;

    aget-object v3, v4, v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, LQd/a;-><init>(Ljava/lang/String;Ljava/lang/String;LQd/c;)V

    iget v1, p0, LQd/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LQd/b;->b:I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, LQd/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot remove elements from a DataBufferIterator"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget v0, p0, LQd/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LQd/b;->b:I

    iget-object p0, p0, LQd/b;->c:Ljava/lang/Iterable;

    check-cast p0, LQd/c;

    invoke-virtual {p0, v0}, LQd/c;->z(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
