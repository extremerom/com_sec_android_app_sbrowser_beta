.class public final Li7/h;
.super Li7/i;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Ll7/h;


# direct methods
.method public constructor <init>(Ll7/h;I)V
    .locals 0

    invoke-direct {p0, p2}, Li7/i;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Li7/h;->b:Ll7/h;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "field == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li7/h;->b:Ll7/h;

    invoke-virtual {p0}, Ll7/p;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Li7/h;

    iget-object p0, p0, Li7/h;->b:Ll7/h;

    iget-object p1, p1, Li7/h;->b:Ll7/h;

    invoke-virtual {p0, p1}, Ll7/a;->d(Ll7/a;)I

    move-result p0

    return p0
.end method

.method public final d(Li7/f;Ln7/b;II)I
    .locals 3

    iget-object p1, p1, Li7/f;->h:Li7/l;

    iget-object v0, p0, Li7/h;->b:Ll7/h;

    invoke-virtual {p1, v0}, Li7/l;->l(Ll7/h;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v1

    iget p0, p0, Li7/i;->a:I

    if-eqz v1, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0}, Ll7/p;->a()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p4, v0}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "  [%x] %s"

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p4}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p3}, Lqd/l;->c(I)I

    move-result p4

    invoke-static {p1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "    field_idx:    "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {p0}, Lqd/l;->c(I)I

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    access_flags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x50df

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, LG5/a4;->b(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2, p3}, Ln7/b;->m(I)I

    invoke-virtual {p2, p0}, Ln7/b;->m(I)I

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Li7/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Li7/h;

    iget-object p0, p0, Li7/h;->b:Ll7/h;

    iget-object p1, p1, Li7/h;->b:Ll7/h;

    invoke-virtual {p0, p1}, Ll7/a;->d(Ll7/a;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Li7/h;->b:Ll7/h;

    invoke-virtual {p0}, Ll7/p;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Li7/h;

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

    iget-object p0, p0, Li7/h;->b:Ll7/h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
