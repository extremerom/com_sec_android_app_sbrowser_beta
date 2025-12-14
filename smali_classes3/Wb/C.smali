.class public final LWb/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHc/b;


# static fields
.field public static final a:LWb/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LWb/C;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LWb/C;->a:LWb/C;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, LJb/f;

    sget p0, LWb/E;->p:I

    invoke-interface {p1}, LJb/i;->w()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "getSupertypes(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p0

    sget-object p1, LWb/n;->f:LWb/n;

    invoke-static {p0, p1}, LJc/n;->u(LJc/l;Lsb/k;)LJc/h;

    move-result-object p0

    new-instance p1, LJc/q;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, LJc/q;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method
