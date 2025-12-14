.class public final LK1/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lsb/n;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LZ1/p;IILandroid/content/Context;Lsb/n;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LK1/f;->a:I

    iput-object p1, p0, LK1/f;->e:Ljava/lang/Object;

    iput p2, p0, LK1/f;->b:I

    iput p3, p0, LK1/f;->d:I

    iput-object p4, p0, LK1/f;->f:Ljava/lang/Object;

    iput-object p5, p0, LK1/f;->c:Lsb/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILW/m;Li0/a;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LK1/f;->a:I

    iput-object p1, p0, LK1/f;->e:Ljava/lang/Object;

    iput p2, p0, LK1/f;->b:I

    iput-object p3, p0, LK1/f;->f:Ljava/lang/Object;

    iput-object p4, p0, LK1/f;->c:Lsb/n;

    iput p5, p0, LK1/f;->d:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lx1/r;LK1/c;Li0/a;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LK1/f;->a:I

    iput-object p1, p0, LK1/f;->e:Ljava/lang/Object;

    iput-object p2, p0, LK1/f;->f:Ljava/lang/Object;

    iput-object p3, p0, LK1/f;->c:Lsb/n;

    iput p4, p0, LK1/f;->b:I

    iput p5, p0, LK1/f;->d:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LK1/f;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v5

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
    iget-object p1, p0, LK1/f;->e:Ljava/lang/Object;

    check-cast p1, LZ1/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, LM1/b;->b:I

    invoke-static {p1}, LM1/b;->c(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, LK1/f;->b:I

    shl-int p1, p2, p1

    iget p2, p0, LK1/f;->d:I

    or-int v1, p1, p2

    iget-object p1, p0, LK1/f;->f:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v5}, LG5/P3;->a(Landroid/content/Context;La0/m;)J

    move-result-wide v2

    iget-object v4, p0, LK1/f;->c:Lsb/n;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, LE1/g;->a(IJLsb/n;La0/m;I)V

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LK1/f;->d:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object p1, p0, LK1/f;->c:Lsb/n;

    move-object v3, p1

    check-cast v3, Li0/a;

    iget-object v0, p0, LK1/f;->e:Ljava/lang/Object;

    iget v1, p0, LK1/f;->b:I

    iget-object p0, p0, LK1/f;->f:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, LW/m;

    invoke-static/range {v0 .. v5}, LG5/b3;->a(Ljava/lang/Object;ILW/m;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    move-object v3, p1

    check-cast v3, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LK1/f;->b:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v4

    iget-object p1, p0, LK1/f;->c:Lsb/n;

    move-object v2, p1

    check-cast v2, Li0/a;

    iget-object p1, p0, LK1/f;->e:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lx1/r;

    iget v5, p0, LK1/f;->d:I

    iget-object p0, p0, LK1/f;->f:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, LK1/c;

    invoke-static/range {v0 .. v5}, LG5/L3;->a(Lx1/r;LK1/c;Li0/a;La0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
