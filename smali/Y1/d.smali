.class public final LY1/d;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:LR1/y;

.field public final synthetic b:I

.field public final synthetic c:LR1/r;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(LR1/y;ILR1/r;Z)V
    .locals 0

    iput-object p1, p0, LY1/d;->a:LR1/y;

    iput p2, p0, LY1/d;->b:I

    iput-object p3, p0, LY1/d;->c:LR1/r;

    iput-boolean p4, p0, LY1/d;->d:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, LK1/i;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "$this$Column"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lx1/k;->e:La0/L0;

    move-object p3, p2

    check-cast p3, La0/q;

    invoke-virtual {p3, p1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ1/b;

    iget-object v0, v0, LJ1/b;->r:Lf2/a;

    iget-object v1, p0, LY1/d;->a:LR1/y;

    sget-object v2, LS1/a;->b:Ljava/util/List;

    iget-object v2, v1, LR1/x;->c:Lf2/a;

    if-nez v2, :cond_0

    move-object v2, v0

    :cond_0
    const/16 v6, 0x230

    const/16 v7, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget v5, p0, LY1/d;->b:I

    move-object v0, v1

    move v1, v3

    move-object v3, v4

    move v4, v5

    move-object v5, p2

    invoke-static/range {v0 .. v7}, LG5/w3;->b(LR1/x;ILf2/a;Lx1/r;ILa0/m;II)V

    iget-object v0, p0, LY1/d;->c:LR1/r;

    invoke-virtual {v0}, LR1/r;->getSubText()LR1/y;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    sget-object v1, Lx1/p;->a:Lx1/p;

    iget-boolean p0, p0, LY1/d;->d:Z

    if-eqz p0, :cond_2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    :goto_0
    double-to-float p0, v2

    goto :goto_1

    :cond_2
    const-wide v2, 0x3fe6b851eb851eb8L    # 0.71

    goto :goto_0

    :goto_1
    invoke-static {v1, p0}, LG5/P3;->f(Lx1/r;F)Lx1/r;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, LG5/Q3;->a(Lx1/r;La0/m;I)V

    invoke-virtual {v0}, LR1/r;->getSubText()LR1/y;

    move-result-object p0

    invoke-virtual {p3, p1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ1/b;

    iget-object p1, p1, LJ1/b;->v:Lf2/a;

    invoke-virtual {v0}, LR1/r;->getSubText()LR1/y;

    move-result-object p3

    iget-object p3, p3, LR1/x;->c:Lf2/a;

    if-nez p3, :cond_3

    move-object v2, p1

    goto :goto_2

    :cond_3
    move-object v2, p3

    :goto_2
    const/16 v6, 0x230

    const/16 v7, 0x18

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v7}, LG5/w3;->b(LR1/x;ILf2/a;Lx1/r;ILa0/m;II)V

    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
