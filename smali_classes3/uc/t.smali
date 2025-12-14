.class public final Luc/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final a:Luc/v;

.field public final b:Z

.field public final c:Lcc/I;


# direct methods
.method public constructor <init>(Luc/v;ZLcc/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/t;->a:Luc/v;

    iput-boolean p2, p0, Luc/t;->b:Z

    iput-object p3, p0, Luc/t;->c:Lcc/I;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Luc/t;->a:Luc/v;

    iget-object v1, v0, Luc/v;->a:Luc/m;

    iget-object v1, v1, Luc/m;->c:Ljava/lang/Object;

    check-cast v1, LJb/l;

    invoke-virtual {v0, v1}, Luc/v;->a(LJb/l;)LJ2/i0;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Luc/t;->b:Z

    iget-object p0, p0, Luc/t;->c:Lcc/I;

    iget-object v0, v0, Luc/v;->a:Luc/m;

    if-eqz v2, :cond_0

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->e:Luc/c;

    invoke-interface {v0, v1, p0}, Luc/e;->k(LJ2/i0;Lcc/I;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->e:Luc/c;

    invoke-interface {v0, v1, p0}, Luc/e;->h(LJ2/i0;Lcc/I;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_2
    return-object p0
.end method
