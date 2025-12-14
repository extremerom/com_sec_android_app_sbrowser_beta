.class public final LAc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJb/C;


# static fields
.field public static final a:LAc/e;

.field public static final b:Lhc/f;

.field public static final c:Lfb/v;

.field public static final d:Ldb/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LAc/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LAc/e;->a:LAc/e;

    sget-object v0, LAc/b;->ERROR_MODULE:LAc/b;

    invoke-virtual {v0}, LAc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhc/f;->h(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LAc/e;->b:Lhc/f;

    sget-object v0, Lfb/v;->a:Lfb/v;

    sput-object v0, LAc/e;->c:Lfb/v;

    sget-object v0, LAc/d;->a:LAc/d;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, LAc/e;->d:Ldb/o;

    return-void
.end method


# virtual methods
.method public final C(LJb/C;)Z
    .locals 0

    const-string p0, "targetModule"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final T(LP7/c;)Ljava/lang/Object;
    .locals 0

    const-string p0, "capability"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()LJb/l;
    .locals 0

    return-object p0
.end method

.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getName()Lhc/f;
    .locals 0

    sget-object p0, LAc/e;->b:Lhc/f;

    return-object p0
.end method

.method public final j()LGb/i;
    .locals 0

    sget-object p0, LAc/e;->d:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LGb/i;

    return-object p0
.end method

.method public final k()LJb/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final q0(Lhc/c;)LJb/M;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t(Lhc/c;Lsb/k;)Ljava/util/Collection;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final t0()Ljava/util/List;
    .locals 0

    sget-object p0, LAc/e;->c:Lfb/v;

    return-object p0
.end method

.method public final u()LKb/h;
    .locals 0

    sget-object p0, LKb/g;->a:LKb/f;

    return-object p0
.end method
