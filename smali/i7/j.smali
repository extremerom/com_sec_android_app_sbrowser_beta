.class public final Li7/j;
.super Li7/i;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Ll7/q;

.field public final c:Li7/e;


# direct methods
.method public constructor <init>(Ll7/q;ILo3/n;Lm7/b;)V
    .locals 1

    invoke-direct {p0, p2}, Li7/i;-><init>(I)V

    if-eqz p1, :cond_1

    iput-object p1, p0, Li7/j;->b:Ll7/q;

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Li7/e;

    invoke-direct {v0, p1, p3, p2, p4}, Li7/e;-><init>(Ll7/q;Lo3/n;ZLm7/b;)V

    iput-object v0, p0, Li7/j;->c:Li7/e;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "method == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li7/j;->b:Ll7/q;

    invoke-virtual {p0}, Ll7/p;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Li7/j;

    iget-object p0, p0, Li7/j;->b:Ll7/q;

    iget-object p1, p1, Li7/j;->b:Ll7/q;

    invoke-virtual {p0, p1}, Ll7/a;->d(Ll7/a;)I

    move-result p0

    return p0
.end method

.method public final d(Li7/f;Ln7/b;II)I
    .locals 6

    iget-object p1, p1, Li7/f;->i:Li7/v;

    iget-object v0, p0, Li7/j;->b:Ll7/q;

    invoke-virtual {p1, v0}, Li7/v;->l(Ll7/q;)I

    move-result p1

    sub-int p3, p1, p3

    const/4 v1, 0x0

    iget-object v2, p0, Li7/j;->c:Li7/e;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Li7/z;->g()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget p0, p0, Li7/i;->a:I

    and-int/lit16 v5, p0, 0x500

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-ne v4, v3, :cond_4

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0}, Ll7/p;->a()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p4, v0}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "  [%x] %s"

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v1, p4}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p3}, Lqd/l;->c(I)I

    move-result p4

    invoke-static {p1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "    method_idx:   "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p0}, Lqd/l;->c(I)I

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    access_flags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x31dff

    const/4 v3, 0x3

    invoke-static {p0, v1, v3}, LG5/a4;->b(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v2}, Lqd/l;->c(I)I

    move-result p4

    invoke-static {v2}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "    code_off:     "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p2, p3}, Ln7/b;->m(I)I

    invoke-virtual {p2, p0}, Ln7/b;->m(I)I

    invoke-virtual {p2, v2}, Ln7/b;->m(I)I

    return p1

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "code vs. access_flags mismatch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Li7/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Li7/j;

    iget-object p0, p0, Li7/j;->b:Ll7/q;

    iget-object p1, p1, Li7/j;->b:Ll7/q;

    invoke-virtual {p0, p1}, Ll7/a;->d(Ll7/a;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Li7/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Li7/i;->a:I

    invoke-static {v1}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Li7/j;->b:Ll7/q;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Li7/j;->c:Li7/e;

    if-eqz p0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
