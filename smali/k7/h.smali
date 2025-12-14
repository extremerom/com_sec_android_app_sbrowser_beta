.class public final Lk7/h;
.super Lk7/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;Ll7/v;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lk7/c;-><init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;Ll7/a;)V

    const/4 p0, 0x1

    iget p1, p1, Lk7/n;->e:I

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus branchingness"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lk7/e;)V
    .locals 0

    invoke-interface {p1, p0}, Lk7/e;->i(Lk7/h;)V

    return-void
.end method

.method public final d()Lm7/e;
    .locals 0

    sget-object p0, Lm7/b;->c:Lm7/b;

    return-object p0
.end method
