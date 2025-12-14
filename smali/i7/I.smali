.class public final Li7/I;
.super Li7/z;
.source "SourceFile"


# instance fields
.field public final e:Li7/q;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Li7/q;Ljava/util/ArrayList;)V
    .locals 3

    invoke-static {p2}, Li7/I;->o(Ljava/util/ArrayList;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/z;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Li7/z;->d()I

    move-result v1

    mul-int/2addr v1, v2

    invoke-static {p2}, Li7/I;->o(Ljava/util/ArrayList;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Li7/z;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p2, p0, Li7/I;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Li7/I;->e:Li7/q;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "itemType == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ljava/util/ArrayList;)I
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/z;

    iget p0, p0, Li7/z;->a:I

    const/4 v0, 0x4

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "items == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "items.size() == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 1

    iget-object p0, p0, Li7/I;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/z;

    invoke-virtual {v0, p1}, Li7/p;->a(Li7/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    iget-object p0, p0, Li7/I;->e:Li7/q;

    return-object p0
.end method

.method public final l(Li7/y;I)V
    .locals 6

    iget v0, p0, Li7/z;->a:I

    add-int/2addr p2, v0

    iget-object p0, p0, Li7/I;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li7/z;

    invoke-virtual {v3}, Li7/z;->d()I

    move-result v4

    iget v5, v3, Li7/z;->a:I

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    move v1, v5

    goto :goto_1

    :cond_0
    if-ne v4, v0, :cond_2

    if-ne v5, v1, :cond_1

    :goto_1
    invoke-virtual {v3, p1, p2}, Li7/z;->k(Li7/y;I)I

    move-result p2

    add-int/2addr p2, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "item alignment mismatch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "item size mismatch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public final n(Li7/f;Ln7/b;)V
    .locals 4

    iget-object v0, p0, Li7/I;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/z;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li7/I;->c()Li7/q;

    move-result-object p0

    invoke-virtual {p0}, Li7/q;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "  size: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    invoke-virtual {p2, v2, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/z;

    invoke-virtual {v0, p1, p2}, Li7/z;->e(Li7/f;Ln7/b;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Li7/I;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Li7/I;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
