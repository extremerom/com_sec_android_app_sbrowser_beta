.class public final Lk7/r;
.super Lk7/f;
.source "SourceFile"


# instance fields
.field public final e:Lm7/b;


# direct methods
.method public constructor <init>(Lk7/n;Lk7/p;Lk7/l;Lm7/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lk7/f;-><init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;)V

    const/4 p2, 0x6

    iget p1, p1, Lk7/n;->e:I

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Lk7/r;->e:Lm7/b;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "catches == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus branchingness"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lm7/e;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "catch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v1, p0

    check-cast v1, Ln7/e;

    iget-object v1, v1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0, v2}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v3

    invoke-virtual {v3}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lk7/e;)V
    .locals 0

    invoke-interface {p1, p0}, Lk7/e;->a(Lk7/r;)V

    return-void
.end method

.method public final d()Lm7/e;
    .locals 0

    iget-object p0, p0, Lk7/r;->e:Lm7/b;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk7/r;->e:Lm7/b;

    invoke-static {p0}, Lk7/r;->f(Lm7/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
