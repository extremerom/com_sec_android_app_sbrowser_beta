.class public final Li7/D;
.super Li7/z;
.source "SourceFile"


# instance fields
.field public final e:Ll7/t;


# direct methods
.method public constructor <init>(Ll7/t;)V
    .locals 2

    iget-object v0, p1, Ll7/t;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lqd/l;->c(I)I

    move-result v0

    iget-object v1, p1, Ll7/t;->b:LMd/c;

    iget v1, v1, LMd/c;->b:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Li7/z;-><init>(II)V

    iput-object p1, p0, Li7/D;->e:Ll7/t;

    return-void
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 0

    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_STRING_DATA_ITEM:Li7/q;

    return-object p0
.end method

.method public final f(Li7/z;)I
    .locals 0

    check-cast p1, Li7/D;

    iget-object p0, p0, Li7/D;->e:Ll7/t;

    iget-object p1, p1, Li7/D;->e:Ll7/t;

    invoke-virtual {p0, p1}, Ll7/a;->d(Ll7/a;)I

    move-result p0

    return p0
.end method

.method public final n(Li7/f;Ln7/b;)V
    .locals 4

    iget-object p0, p0, Li7/D;->e:Ll7/t;

    iget-object p1, p0, Ll7/t;->b:LMd/c;

    iget-object v0, p0, Ll7/t;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lqd/l;->c(I)I

    move-result v1

    invoke-static {v0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf16_size: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ln7/b;->b(ILjava/lang/String;)V

    iget v1, p1, LMd/c;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ll7/t;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v0}, Ln7/b;->m(I)I

    iget p0, p1, LMd/c;->b:I

    iget v0, p2, Ln7/b;->c:I

    add-int/2addr p0, v0

    iget-boolean v1, p2, Ln7/b;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2, p0}, Ln7/b;->f(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p2, Ln7/b;->b:[B

    array-length v1, v1

    if-gt p0, v1, :cond_3

    :goto_0
    iget-object v1, p2, Ln7/b;->b:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    iget v3, p1, LMd/c;->b:I

    if-lt v2, v3, :cond_2

    iget-object p1, p1, LMd/c;->c:Ljava/lang/Object;

    check-cast p1, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p0, p2, Ln7/b;->c:I

    invoke-virtual {p2, v2}, Ln7/b;->i(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "(out.length - offset) < size()"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {}, Ln7/b;->g()V

    const/4 p0, 0x0

    throw p0
.end method
