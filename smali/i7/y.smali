.class public final Li7/y;
.super Li7/C;
.source "SourceFile"


# static fields
.field public static final j:LM0/e;


# instance fields
.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/HashMap;

.field public final h:Li7/x;

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LM0/e;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LM0/e;-><init>(I)V

    sput-object v0, Li7/y;->j:LM0/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Li7/f;ILi7/x;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li7/C;-><init>(Ljava/lang/String;Li7/f;I)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Li7/y;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Li7/y;->g:Ljava/util/HashMap;

    iput-object p4, p0, Li7/y;->h:Li7/x;

    const/4 p1, -0x1

    iput p1, p0, Li7/y;->i:I

    return-void
.end method


# virtual methods
.method public final a(Li7/p;)I
    .locals 0

    check-cast p1, Li7/z;

    invoke-virtual {p1}, Li7/z;->g()I

    move-result p0

    return p0
.end method

.method public final c()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Li7/y;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final e()V
    .locals 5

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Li7/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li7/z;

    iget-object v4, p0, Li7/C;->b:Li7/f;

    invoke-virtual {v3, v4}, Li7/p;->a(Li7/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final h()I
    .locals 0

    invoke-virtual {p0}, Li7/C;->f()V

    iget p0, p0, Li7/y;->i:I

    return p0
.end method

.method public final j(Ln7/b;)V
    .locals 9

    invoke-virtual {p1}, Ln7/b;->d()Z

    move-result v0

    iget-object v1, p0, Li7/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li7/z;

    if-eqz v0, :cond_1

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    const-string v7, "\n"

    invoke-virtual {p1, v2, v7}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_1
    :goto_1
    iget v7, v6, Li7/z;->a:I

    sub-int/2addr v7, v3

    add-int v8, v4, v7

    not-int v7, v7

    and-int/2addr v7, v8

    if-eq v4, v7, :cond_2

    sub-int v4, v7, v4

    invoke-virtual {p1, v4}, Ln7/b;->n(I)V

    move v4, v7

    :cond_2
    iget-object v7, p0, Li7/C;->b:Li7/f;

    invoke-virtual {v6, v7, p1}, Li7/z;->e(Li7/f;Ln7/b;)V

    invoke-virtual {v6}, Li7/z;->d()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    :cond_3
    iget p0, p0, Li7/y;->i:I

    if-ne v4, p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "output size mismatch"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(Li7/z;)V
    .locals 2

    invoke-virtual {p0}, Li7/C;->g()V

    :try_start_0
    iget v0, p1, Li7/z;->a:I

    iget v1, p0, Li7/C;->c:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Li7/y;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incompatible item alignment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "item == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(Li7/z;)Li7/z;
    .locals 2

    invoke-virtual {p0}, Li7/C;->g()V

    iget-object v0, p0, Li7/y;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/z;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Li7/y;->k(Li7/z;)V

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final m()V
    .locals 6

    invoke-virtual {p0}, Li7/C;->f()V

    sget-object v0, Li7/w;->a:[I

    iget-object v1, p0, Li7/y;->h:Li7/x;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Li7/y;->f:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Li7/y;->j:LM0/e;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li7/z;

    :try_start_0
    invoke-virtual {v4, p0, v3}, Li7/z;->k(Li7/y;I)I

    move-result v5

    if-lt v5, v3, :cond_2

    invoke-virtual {v4}, Li7/z;->d()I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus place() result for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "...while placing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ln7/d;->a(Ljava/lang/String;Ljava/lang/Exception;)Ln7/d;

    move-result-object p0

    throw p0

    :cond_3
    iput v3, p0, Li7/y;->i:I

    return-void
.end method
