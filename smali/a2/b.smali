.class public final La2/b;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    iput p3, p0, La2/b;->a:I

    iput-object p1, p0, La2/b;->b:Ljava/lang/String;

    iput p2, p0, La2/b;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    iget v1, v0, La2/b;->a:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, La0/m;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    iget v2, v0, La2/b;->c:I

    or-int/lit8 v2, v2, 0x1

    invoke-static {v2}, La0/d;->P(I)I

    move-result v2

    iget-object v0, v0, La2/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La2/e;->a(Ljava/lang/String;La0/m;I)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_0
    move-object/from16 v6, p1

    check-cast v6, La0/m;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v6

    check-cast v1, La0/q;

    invoke-virtual {v1}, La0/q;->x()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, La0/q;->K()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, LR1/x;

    const/4 v13, 0x0

    const/16 v14, 0x7ffe

    iget-object v8, v0, La2/b;->b:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, LR1/x;-><init>(Ljava/lang/String;Lf2/a;ILe2/c;ILe2/k;I)V

    const/16 v2, 0x8

    int-to-float v2, v2

    iget v0, v0, La2/b;->c:I

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v3

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v0}, Ls0/b;->a(JF)J

    move-result-wide v3

    new-instance v0, Lf2/i;

    invoke-direct {v0, v3, v4}, Lf2/i;-><init>(J)V

    sget-object v3, Lx1/p;->a:Lx1/p;

    const/4 v4, 0x1

    invoke-static {v3, v4}, LG5/I2;->l(Lx1/r;Z)Lx1/r;

    move-result-object v5

    const/16 v3, 0x190

    const/16 v7, 0x1038

    const/4 v8, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v8}, LG5/S2;->d(LR1/x;FILf2/a;Lx1/r;La0/m;II)V

    :goto_1
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
