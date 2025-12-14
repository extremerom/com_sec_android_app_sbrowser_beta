.class public final LY1/i;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lx1/r;

.field public final synthetic c:LR1/r;

.field public final synthetic d:LR1/y;


# direct methods
.method public constructor <init>(FLx1/r;LR1/r;LR1/y;)V
    .locals 0

    iput p1, p0, LY1/i;->a:F

    iput-object p2, p0, LY1/i;->b:Lx1/r;

    iput-object p3, p0, LY1/i;->c:LR1/r;

    iput-object p4, p0, LY1/i;->d:LR1/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, La2/e;->a:La2/e;

    sget-object p2, Lx1/p;->a:Lx1/p;

    iget v1, p0, LY1/i;->a:F

    invoke-static {p2, v1}, LG5/P3;->f(Lx1/r;F)Lx1/r;

    move-result-object v1

    sget-object v5, LY1/b;->a:Li0/a;

    const v7, 0x36000

    const/16 v8, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    invoke-virtual/range {v0 .. v8}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    new-instance p2, LY1/h;

    iget-object v0, p0, LY1/i;->d:LR1/y;

    iget-object v1, p0, LY1/i;->c:LR1/r;

    const/4 v2, 0x0

    invoke-direct {p2, v2, v1, v0}, LY1/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x2c25dc56

    invoke-static {p1, v0, p2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v3

    const/16 v5, 0xc00

    const/4 v6, 0x2

    iget-object v0, p0, LY1/i;->b:Lx1/r;

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v4, p1

    invoke-static/range {v0 .. v6}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
