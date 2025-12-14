.class public abstract Lk3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkConstraintsTracker"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkConstraintsTracker\")"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lk3/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(LP7/c;Lo3/q;LNc/x;Lk3/e;)LNc/m0;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object v0

    invoke-virtual {p2, v0}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p2

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    new-instance v1, Lk3/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p3, v2}, Lk3/g;-><init>(LP7/c;Lo3/q;Lk3/e;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p2, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-object v0
.end method
