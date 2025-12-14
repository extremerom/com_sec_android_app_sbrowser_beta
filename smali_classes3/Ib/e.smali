.class public final LIb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHc/b;


# static fields
.field public static final a:LIb/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LIb/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LIb/e;->a:LIb/e;

    return-void
.end method

.method public static a(LJb/f;)LJb/f;
    .locals 3

    invoke-static {p0}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object v0

    sget-object v1, LIb/d;->a:Ljava/lang/String;

    sget-object v1, LIb/d;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/c;

    if-eqz v0, :cond_0

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object p0

    invoke-virtual {p0, v0}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a read-only collection"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lhc/c;LGb/i;)LJb/f;
    .locals 1

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LIb/d;->a:Ljava/lang/String;

    sget-object v0, LIb/d;->h:Ljava/util/HashMap;

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhc/b;->a()Lhc/c;

    move-result-object p0

    invoke-virtual {p1, p0}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, LJb/d;

    sget-object p0, LIb/q;->h:[LAb/u;

    invoke-interface {p1}, LJb/d;->a()LJb/d;

    move-result-object p0

    invoke-interface {p0}, LJb/d;->l()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method
