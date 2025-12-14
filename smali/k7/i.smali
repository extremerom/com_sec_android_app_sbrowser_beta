.class public final Lk7/i;
.super Lk7/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lk7/f;-><init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;)V

    const/4 p0, 0x5

    iget p1, p1, Lk7/n;->e:I

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_2

    if-eqz p3, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t mix branchingness with result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus branchingness"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lk7/e;)V
    .locals 0

    invoke-interface {p1, p0}, Lk7/e;->h(Lk7/i;)V

    return-void
.end method

.method public final d()Lm7/e;
    .locals 0

    sget-object p0, Lm7/b;->c:Lm7/b;

    return-object p0
.end method
