.class public abstract Lv2/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv2/F;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lv2/j1;I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_2

    move-object v0, p0

    check-cast v0, Lv2/J0;

    invoke-virtual {v0}, Lv2/J0;->e()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget p0, v0, Lv2/J0;->c:I

    sub-int/2addr p1, p0

    if-ltz p1, :cond_1

    iget p0, v0, Lv2/J0;->b:I

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: "

    const-string v2, ", Size: "

    invoke-static {p1, v1, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    check-cast p0, Lv2/J0;

    invoke-virtual {p0}, Lv2/J0;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Lv2/C1;Lv2/C1;Lv2/P;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadType"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lv2/A1;

    if-eqz v1, :cond_1

    instance-of v1, p0, Lv2/z1;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, p0, Lv2/A1;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    instance-of v1, p1, Lv2/z1;

    if-eqz v1, :cond_2

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lv2/C1;->c:I

    iget v3, p1, Lv2/C1;->c:I

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p0, Lv2/C1;->d:I

    iget v3, p1, Lv2/C1;->d:I

    if-eq v1, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Lv2/C1;->a(Lv2/P;)I

    move-result p1

    invoke-virtual {p0, p2}, Lv2/C1;->a(Lv2/P;)I

    move-result p0

    if-gt p1, p0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public static final c(Lsb/n;)LQc/h;
    .locals 2

    new-instance v0, Lv2/p1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv2/p1;-><init>(Lsb/n;Lib/c;)V

    new-instance p0, LQc/k;

    invoke-direct {p0, v0}, LQc/k;-><init>(Lsb/n;)V

    const/4 v0, -0x2

    invoke-static {p0, v0}, LQc/n0;->f(LQc/h;I)LQc/h;

    move-result-object p0

    return-object p0
.end method
