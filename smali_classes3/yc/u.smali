.class public final Lyc/u;
.super Lyc/U;
.source "SourceFile"


# instance fields
.field public final b:[LJb/W;

.field public final c:[Lyc/Q;

.field public final d:Z


# direct methods
.method public constructor <init>([LJb/W;[Lyc/Q;Z)V
    .locals 1

    const-string v0, "parameters"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/u;->b:[LJb/W;

    iput-object p2, p0, Lyc/u;->c:[Lyc/Q;

    iput-boolean p3, p0, Lyc/u;->d:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lyc/u;->d:Z

    return p0
.end method

.method public final d(Lyc/w;)Lyc/Q;
    .locals 4

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p1

    invoke-interface {p1}, Lyc/L;->c()LJb/i;

    move-result-object p1

    instance-of v0, p1, LJb/W;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LJb/W;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, LJb/W;->getIndex()I

    move-result v0

    iget-object v2, p0, Lyc/u;->b:[LJb/W;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-interface {v2}, LJb/i;->w()Lyc/L;

    move-result-object v2

    invoke-interface {p1}, LJb/i;->w()Lyc/L;

    move-result-object p1

    invoke-static {v2, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lyc/u;->c:[Lyc/Q;

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lyc/u;->c:[Lyc/Q;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
