.class public final LY1/o;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lsb/n;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lsb/n;I)V
    .locals 0

    iput p5, p0, LY1/o;->a:I

    iput-object p1, p0, LY1/o;->b:Ljava/lang/Object;

    iput-object p2, p0, LY1/o;->c:Ljava/lang/Object;

    iput-object p3, p0, LY1/o;->d:Ljava/lang/Object;

    iput-object p4, p0, LY1/o;->e:Lsb/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lx1/r;LK1/c;Li0/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LY1/o;->a:I

    iput-object p1, p0, LY1/o;->b:Ljava/lang/Object;

    iput-object p2, p0, LY1/o;->c:Ljava/lang/Object;

    iput-object p3, p0, LY1/o;->e:Lsb/n;

    iput-object p4, p0, LY1/o;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LY1/o;->a:I

    packed-switch v0, :pswitch_data_0

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
    iget-object p2, p0, LY1/o;->e:Lsb/n;

    move-object v3, p2

    check-cast v3, Li0/a;

    iget-object p2, p0, LY1/o;->b:Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lx1/r;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p2, p0, LY1/o;->c:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, LK1/c;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, LG5/L3;->a(Lx1/r;LK1/c;Li0/a;La0/m;II)V

    iget-object p0, p0, LY1/o;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x30

    invoke-static {p0, p1, p2}, La2/e;->a(Ljava/lang/String;La0/m;I)V

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    move-object p1, v4

    check-cast p1, La0/q;

    invoke-virtual {p1}, La0/q;->x()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, La0/q;->K()V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, LY1/o;->d:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, LY1/o;->e:Lsb/n;

    const/16 v5, 0x1048

    iget-object p1, p0, LY1/o;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, LZ1/p;

    iget-object p0, p0, LY1/o;->c:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static/range {v0 .. v5}, LZ1/p;->n(LZ1/p;Landroid/content/Context;Ljava/util/ArrayList;Lsb/n;La0/m;I)V

    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_7

    :cond_6
    :goto_4
    iget-object p2, p0, LY1/o;->b:Ljava/lang/Object;

    check-cast p2, Ltb/w;

    iget-object p2, p2, Ltb/w;->a:Ljava/lang/Object;

    check-cast p2, Lsb/n;

    check-cast p1, La0/q;

    const v0, 0x4b79f36d    # 1.6380781E7f

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    const/4 v6, 0x0

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    iget-object p2, p0, LY1/o;->c:Ljava/lang/Object;

    check-cast p2, Ltb/w;

    iget-object p2, p2, Ltb/w;->a:Ljava/lang/Object;

    check-cast p2, Lsb/n;

    const v0, 0x4b79f39a    # 1.6380826E7f

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    if-nez p2, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    iget-object p2, p0, LY1/o;->d:Ljava/lang/Object;

    check-cast p2, LV9/a;

    iget-object v0, p0, LY1/o;->e:Lsb/n;

    move-object v3, v0

    check-cast v3, Li0/a;

    if-eqz p2, :cond_9

    const p2, 0x4b79f3e3    # 1.6380899E7f

    invoke-virtual {p1, p2}, La0/q;->R(I)V

    const/4 v1, 0x0

    const/16 v5, 0x8

    iget-object p0, p0, LY1/o;->d:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, LV9/a;

    const/4 v2, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, LG5/h3;->a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V

    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    goto :goto_7

    :cond_9
    const p0, 0x4b79f42c    # 1.6380972E7f

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p1, p0}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    :goto_7
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
