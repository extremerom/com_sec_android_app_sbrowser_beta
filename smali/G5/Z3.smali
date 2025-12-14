.class public abstract LG5/Z3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "db"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object v1

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "tables"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, LJ2/s;->c:LJ2/C0;

    invoke-virtual {v2, p1}, LJ2/C0;->g([Ljava/lang/String;)Ldb/j;

    move-result-object p1

    iget-object v3, p1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    check-cast p1, [I

    const-string v4, "resolvedTableNames"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "tableIds"

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LJ2/r0;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v3, v5}, LJ2/r0;-><init>(LJ2/C0;[I[Ljava/lang/String;Lib/c;)V

    new-instance p1, LQc/k;

    invoke-direct {p1, v4}, LQc/k;-><init>(Lsb/n;)V

    iget-object v1, v1, LJ2/s;->j:LJ2/A;

    if-eqz v1, :cond_0

    iget-object v1, v1, LJ2/A;->h:LQc/m0;

    new-instance v5, LJ2/v;

    invoke-direct {v5, v0, v1, v3}, LJ2/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz v5, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [LQc/h;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object v5, v1, p1

    sget p1, LQc/J;->a:I

    invoke-static {v1}, Lfb/l;->c([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance v1, LQc/e;

    sget-object v2, Lib/i;->a:Lib/i;

    sget-object v3, LPc/a;->SUSPEND:LPc/a;

    const/4 v4, -0x2

    invoke-direct {v1, p1, v2, v4, v3}, LQc/e;-><init>(Ljava/lang/Iterable;Lib/h;ILPc/a;)V

    move-object p1, v1

    :cond_1
    const/4 v1, -0x1

    invoke-static {p1, v1}, LQc/n0;->f(LQc/h;I)LQc/h;

    move-result-object p1

    new-instance v1, LL2/l;

    invoke-direct {v1, p1, p0, p2, v0}, LL2/l;-><init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V

    return-object v1
.end method

.method public static l(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p0, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract b(ILandroid/view/View;)I
.end method

.method public abstract c(ILandroid/view/View;)I
.end method

.method public e(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public abstract h(I)V
.end method

.method public abstract i(IILandroid/view/View;)V
.end method

.method public abstract j(Landroid/view/View;FF)V
.end method

.method public abstract k(ILandroid/view/View;)Z
.end method
