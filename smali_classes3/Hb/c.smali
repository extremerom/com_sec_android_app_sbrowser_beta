.class public final LHb/c;
.super LMb/c;
.source "SourceFile"


# static fields
.field public static final l:Lhc/b;

.field public static final m:Lhc/b;


# instance fields
.field public final e:Lxc/l;

.field public final f:Lvc/c;

.field public final g:LHb/l;

.field public final h:I

.field public final i:LHb/b;

.field public final j:LHb/f;

.field public final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhc/b;

    sget-object v1, LGb/q;->l:Lhc/c;

    const-string v2, "Function"

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    sput-object v0, LHb/c;->l:Lhc/b;

    new-instance v0, Lhc/b;

    sget-object v1, LGb/q;->i:Lhc/c;

    const-string v2, "KFunction"

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    sput-object v0, LHb/c;->m:Lhc/b;

    return-void
.end method

.method public constructor <init>(Lxc/l;Lvc/c;LHb/l;I)V
    .locals 3

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, LHb/l;->a(I)Lhc/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LMb/c;-><init>(Lxc/o;Lhc/f;)V

    iput-object p1, p0, LHb/c;->e:Lxc/l;

    iput-object p2, p0, LHb/c;->f:Lvc/c;

    iput-object p3, p0, LHb/c;->g:LHb/l;

    iput p4, p0, LHb/c;->h:I

    new-instance p2, LHb/b;

    invoke-direct {p2, p0}, LHb/b;-><init>(LHb/c;)V

    iput-object p2, p0, LHb/c;->i:LHb/b;

    new-instance p2, LHb/f;

    invoke-direct {p2, p1, p0}, Lrc/h;-><init>(Lxc/o;LMb/c;)V

    iput-object p2, p0, LHb/c;->j:LHb/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lzb/d;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p4, p3}, Lzb/b;-><init>(III)V

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p4, p2

    check-cast p4, Lzb/c;

    iget-boolean p4, p4, Lzb/c;->c:Z

    if-eqz p4, :cond_0

    move-object p4, p2

    check-cast p4, Lzb/c;

    invoke-virtual {p4}, Lzb/c;->b()I

    move-result p4

    sget-object v0, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, LHb/c;->e:Lxc/l;

    invoke-static {p0, v0, p4, v1, v2}, LMb/Q;->X0(LMb/c;Lyc/e0;Lhc/f;ILxc/o;)LMb/Q;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ldb/r;->a:Ldb/r;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    const-string p3, "R"

    invoke-static {p3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    iget-object v0, p0, LHb/c;->e:Lxc/l;

    invoke-static {p0, p2, p3, p4, v0}, LMb/Q;->X0(LMb/c;Lyc/e0;Lhc/f;ILxc/o;)LMb/Q;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LHb/c;->k:Ljava/util/List;

    sget-object p1, LHb/e;->Companion:LHb/d;

    iget-object p0, p0, LHb/c;->g:LHb/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "functionTypeKind"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LHb/h;->c:LHb/h;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, LHb/k;->c:LHb/k;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, LHb/i;->c:LHb/i;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, LHb/j;->c:LHb/j;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic E()LMb/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final R()LJb/X;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final U()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final W()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final X()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()LJb/g;
    .locals 0

    sget-object p0, LJb/g;->INTERFACE:LJb/g;

    return-object p0
.end method

.method public final e()LJb/S;
    .locals 0

    sget-object p0, LJb/S;->L:LJb/T;

    return-object p0
.end method

.method public final f0(Lzc/f;)Lrc/o;
    .locals 0

    iget-object p0, p0, LHb/c;->j:LHb/f;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getVisibility()LJb/p;
    .locals 1

    sget-object p0, LJb/q;->e:LJb/p;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic h()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final bridge synthetic i()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final bridge synthetic j0()Lrc/o;
    .locals 0

    sget-object p0, Lrc/n;->b:Lrc/n;

    return-object p0
.end method

.method public final k()LJb/l;
    .locals 0

    iget-object p0, p0, LHb/c;->f:Lvc/c;

    return-object p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LHb/c;->k:Ljava/util/List;

    return-object p0
.end method

.method public final r()LJb/B;
    .locals 0

    sget-object p0, LJb/B;->ABSTRACT:LJb/B;

    return-object p0
.end method

.method public final s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LMb/c;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "asString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u()LKb/h;
    .locals 0

    sget-object p0, LKb/g;->a:LKb/f;

    return-object p0
.end method

.method public final w()Lyc/L;
    .locals 0

    iget-object p0, p0, LHb/c;->i:LHb/b;

    return-object p0
.end method

.method public final z()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
