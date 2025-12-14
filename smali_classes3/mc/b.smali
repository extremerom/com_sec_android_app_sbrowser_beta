.class public Lmc/b;
.super Lmc/g;
.source "SourceFile"


# instance fields
.field public final b:Lsb/k;


# direct methods
.method public constructor <init>(Ljava/util/List;Lsb/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lmc/b;->b:Lsb/k;

    return-void
.end method


# virtual methods
.method public final a(LJb/C;)Lyc/w;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lmc/b;->b:Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/w;

    invoke-static {p0}, LGb/i;->z(Lyc/w;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p1

    invoke-interface {p1}, Lyc/L;->c()LJb/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, LGb/i;->s(LJb/i;)LGb/l;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LGb/p;->W:Lhc/c;

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    invoke-static {p0, p1}, LGb/i;->C(Lyc/w;Lhc/d;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, LGb/p;->X:Lhc/c;

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    invoke-static {p0, p1}, LGb/i;->C(Lyc/w;Lhc/d;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, LGb/p;->Y:Lhc/c;

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    invoke-static {p0, p1}, LGb/i;->C(Lyc/w;Lhc/d;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, LGb/p;->Z:Lhc/c;

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    invoke-static {p0, p1}, LGb/i;->C(Lyc/w;Lhc/d;)Z

    :cond_1
    :goto_0
    return-object p0
.end method
