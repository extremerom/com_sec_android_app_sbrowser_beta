.class public final LIb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LIb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LIb/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LIb/f;->a:LIb/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LJb/C;

    sget-object p0, LIb/g;->d:LIb/e;

    const-string p0, "module"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LIb/g;->f:Lhc/c;

    invoke-interface {p1, p0}, LJb/C;->q0(Lhc/c;)LJb/M;

    move-result-object p0

    check-cast p0, LMb/y;

    iget-object p0, p0, LMb/y;->f:Lxc/i;

    sget-object p1, LMb/y;->i:[LAb/u;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lvc/c;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvc/c;

    return-object p0
.end method
