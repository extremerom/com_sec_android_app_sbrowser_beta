.class public abstract LG5/x3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LG5/x3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lf2/a;La0/m;I)V
    .locals 6

    check-cast p1, La0/q;

    const v0, -0x6ea65922

    invoke-virtual {p1, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, La0/q;->f(Z)Z

    :cond_0
    if-nez p0, :cond_1

    const/high16 v0, 0x26000000

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v2

    const v0, 0x26ffffff

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v4

    new-instance v0, LJ1/a;

    invoke-direct {v0, v2, v3, v4, v5}, LJ1/a;-><init>(JJ)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    sget-object v2, Lx1/p;->a:Lx1/p;

    invoke-static {v2}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object v2

    new-instance v3, LK1/p;

    new-instance v4, Lf2/f;

    const v5, 0x7f071158

    invoke-direct {v4, v5}, Lf2/f;-><init>(I)V

    invoke-direct {v3, v4}, LK1/p;-><init>(Lf2/h;)V

    invoke-interface {v2, v3}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v2

    invoke-static {v2, v0}, LG5/x2;->b(Lx1/r;Lf2/a;)Lx1/r;

    move-result-object v0

    invoke-static {v0, p1, v1}, LG5/Q3;->a(Lx1/r;La0/m;I)V

    invoke-virtual {p1}, La0/q;->r()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, LX1/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, LX1/f;-><init>(Lf2/a;II)V

    iput-object v0, p1, La0/i0;->d:Lsb/n;

    :cond_2
    return-void
.end method

.method public static final c(Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;)LJ1/b;
    .locals 29

    new-instance v28, LJ1/b;

    sget-wide v0, Ls0/b;->g:J

    new-instance v15, Lf2/i;

    invoke-direct {v15, v0, v1}, Lf2/i;-><init>(J)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v27, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    invoke-direct/range {v0 .. v27}, LJ1/b;-><init>(Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;)V

    return-object v28
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LG5/x3;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, LG5/x3;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
