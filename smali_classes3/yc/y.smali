.class public final Lyc/y;
.super Lyc/w;
.source "SourceFile"


# instance fields
.field public final b:Lxc/l;

.field public final c:Lsb/a;

.field public final d:Lxc/i;


# direct methods
.method public constructor <init>(Lxc/l;Lsb/a;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/y;->b:Lxc/l;

    iput-object p2, p0, Lyc/y;->c:Lsb/a;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, Lyc/y;->d:Lxc/i;

    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lyc/y;->J0()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final E0()Lyc/H;
    .locals 0

    invoke-virtual {p0}, Lyc/y;->J0()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->E0()Lyc/H;

    move-result-object p0

    return-object p0
.end method

.method public final F0()Lyc/L;
    .locals 0

    invoke-virtual {p0}, Lyc/y;->J0()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    return-object p0
.end method

.method public final G()Lrc/o;
    .locals 0

    invoke-virtual {p0}, Lyc/y;->J0()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->G()Lrc/o;

    move-result-object p0

    return-object p0
.end method

.method public final G0()Z
    .locals 0

    invoke-virtual {p0}, Lyc/y;->J0()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result p0

    return p0
.end method

.method public final H0(Lzc/f;)Lyc/w;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyc/y;

    new-instance v1, LDb/J;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p1, p0}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lyc/y;->b:Lxc/l;

    invoke-direct {v0, p0, v1}, Lyc/y;-><init>(Lxc/l;Lsb/a;)V

    return-object v0
.end method

.method public final I0()Lyc/d0;
    .locals 1

    invoke-virtual {p0}, Lyc/y;->J0()Lyc/w;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lyc/y;

    if-eqz v0, :cond_0

    check-cast p0, Lyc/y;

    invoke-virtual {p0}, Lyc/y;->J0()Lyc/w;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyc/d0;

    return-object p0
.end method

.method public final J0()Lyc/w;
    .locals 0

    iget-object p0, p0, Lyc/y;->d:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/w;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lyc/y;->d:Lxc/i;

    iget-object v1, v0, Lxc/h;->c:Ljava/lang/Object;

    sget-object v2, Lxc/k;->NOT_COMPUTED:Lxc/k;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lxc/h;->c:Ljava/lang/Object;

    sget-object v1, Lxc/k;->COMPUTING:Lxc/k;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lyc/y;->J0()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "<Not computed yet>"

    :goto_0
    return-object p0
.end method
