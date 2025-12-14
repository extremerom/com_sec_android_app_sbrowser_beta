.class public final LY1/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Lx1/r;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:LR1/r;

.field public final synthetic f:I

.field public final synthetic g:LR1/y;


# direct methods
.method public constructor <init>(Lx1/r;ZZLandroid/content/Context;LR1/r;ILR1/y;)V
    .locals 0

    iput-object p1, p0, LY1/f;->a:Lx1/r;

    iput-boolean p2, p0, LY1/f;->b:Z

    iput-boolean p3, p0, LY1/f;->c:Z

    iput-object p4, p0, LY1/f;->d:Landroid/content/Context;

    iput-object p5, p0, LY1/f;->e:LR1/r;

    iput p6, p0, LY1/f;->f:I

    iput-object p7, p0, LY1/f;->g:LR1/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v4

    check-cast p1, La0/q;

    invoke-virtual {p1}, La0/q;->x()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La0/q;->K()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, LY1/e;

    iget-object v8, p0, LY1/f;->d:Landroid/content/Context;

    iget-object v11, p0, LY1/f;->g:LR1/y;

    iget-boolean v6, p0, LY1/f;->b:Z

    iget-boolean v7, p0, LY1/f;->c:Z

    iget-object v9, p0, LY1/f;->e:LR1/r;

    iget v10, p0, LY1/f;->f:I

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, LY1/e;-><init>(ZZLandroid/content/Context;LR1/r;ILR1/y;)V

    const p2, -0x7ef7b3f7

    invoke-static {v4, p2, p1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v3

    const/16 v5, 0xc00

    const/4 v6, 0x2

    iget-object v0, p0, LY1/f;->a:Lx1/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
