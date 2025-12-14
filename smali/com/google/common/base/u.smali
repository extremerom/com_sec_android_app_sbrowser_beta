.class public final Lcom/google/common/base/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lcom/google/common/base/c;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/common/base/e;

.field public e:I

.field public f:I

.field public final synthetic g:Lo3/f;


# direct methods
.method public constructor <init>(Lo3/f;LG5/g4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/u;->g:Lo3/f;

    sget-object p1, Lcom/google/common/base/c;->NOT_READY:Lcom/google/common/base/c;

    iput-object p1, p0, Lcom/google/common/base/u;->a:Lcom/google/common/base/c;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/base/u;->e:I

    iget-object p1, p2, LG5/g4;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/base/e;

    iput-object p1, p0, Lcom/google/common/base/u;->d:Lcom/google/common/base/e;

    iget p1, p2, LG5/g4;->b:I

    iput p1, p0, Lcom/google/common/base/u;->f:I

    iput-object p3, p0, Lcom/google/common/base/u;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 8

    iget-object v0, p0, Lcom/google/common/base/u;->a:Lcom/google/common/base/c;

    sget-object v1, Lcom/google/common/base/c;->FAILED:Lcom/google/common/base/c;

    if-eq v0, v1, :cond_b

    sget-object v2, Lcom/google/common/base/b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    iput-object v1, p0, Lcom/google/common/base/u;->a:Lcom/google/common/base/c;

    iget v0, p0, Lcom/google/common/base/u;->e:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/u;->e:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    iget-object v5, p0, Lcom/google/common/base/u;->g:Lo3/f;

    iget-object v5, v5, Lo3/f;->b:Ljava/lang/Object;

    check-cast v5, Lcom/google/common/base/h;

    iget-object v6, p0, Lcom/google/common/base/u;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/google/common/base/C;->o(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    iput v4, p0, Lcom/google/common/base/u;->e:I

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/google/common/base/u;->e:I

    :goto_1
    iget v5, p0, Lcom/google/common/base/u;->e:I

    if-ne v5, v0, :cond_2

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/base/u;->e:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-le v5, v1, :cond_0

    iput v4, p0, Lcom/google/common/base/u;->e:I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/common/base/u;->d:Lcom/google/common/base/e;

    if-ge v0, v1, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    if-le v1, v0, :cond_4

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget v7, p0, Lcom/google/common/base/u;->f:I

    if-ne v7, v3, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    iput v4, p0, Lcom/google/common/base/u;->e:I

    if-le v1, v0, :cond_6

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_5
    sub-int/2addr v7, v3

    iput v7, p0, Lcom/google/common/base/u;->f:I

    :cond_6
    :goto_2
    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/google/common/base/c;->DONE:Lcom/google/common/base/c;

    iput-object v0, p0, Lcom/google/common/base/u;->a:Lcom/google/common/base/c;

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/common/base/u;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/common/base/u;->a:Lcom/google/common/base/c;

    sget-object v1, Lcom/google/common/base/c;->DONE:Lcom/google/common/base/c;

    if-eq v0, v1, :cond_8

    sget-object v0, Lcom/google/common/base/c;->READY:Lcom/google/common/base/c;

    iput-object v0, p0, Lcom/google/common/base/u;->a:Lcom/google/common/base/c;

    move v2, v3

    :cond_8
    return v2

    :cond_9
    return v3

    :cond_a
    return v2

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/base/u;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/base/c;->NOT_READY:Lcom/google/common/base/c;

    iput-object v0, p0, Lcom/google/common/base/u;->a:Lcom/google/common/base/c;

    iget-object v0, p0, Lcom/google/common/base/u;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/base/u;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
