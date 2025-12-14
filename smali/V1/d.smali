.class public final LV1/d;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ltb/w;

.field public final synthetic c:Lsb/n;

.field public final synthetic d:LV9/a;

.field public final synthetic e:Lsb/n;


# direct methods
.method public constructor <init>(ZLtb/w;Lsb/n;LV9/a;Lsb/n;)V
    .locals 0

    iput-boolean p1, p0, LV1/d;->a:Z

    iput-object p2, p0, LV1/d;->b:Ltb/w;

    iput-object p3, p0, LV1/d;->c:Lsb/n;

    iput-object p4, p0, LV1/d;->d:LV9/a;

    iput-object p5, p0, LV1/d;->e:Lsb/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p1, p0, LV1/d;->b:Ltb/w;

    iget-boolean p2, p0, LV1/d;->a:Z

    iget-object p1, p1, Ltb/w;->a:Ljava/lang/Object;

    check-cast p1, Lx1/r;

    if-eqz p2, :cond_2

    invoke-static {p1}, LG5/P3;->b(Lx1/r;)Lx1/r;

    move-result-object p1

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object p1

    goto :goto_1

    :goto_2
    new-instance p1, LV1/c;

    iget-object p2, p0, LV1/d;->d:LV9/a;

    iget-object v1, p0, LV1/d;->e:Lsb/n;

    iget-boolean v2, p0, LV1/d;->a:Z

    iget-object p0, p0, LV1/d;->c:Lsb/n;

    invoke-direct {p1, v2, p0, p2, v1}, LV1/c;-><init>(ZLsb/n;LV9/a;Lsb/n;)V

    const p0, 0x4d134166    # 1.54408544E8f

    invoke-static {v4, p0, p1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v3

    const/4 v1, 0x0

    const/16 v5, 0xc00

    const/4 v6, 0x2

    invoke-static/range {v0 .. v6}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
