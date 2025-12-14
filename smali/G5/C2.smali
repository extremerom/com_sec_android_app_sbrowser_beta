.class public abstract LG5/C2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LR1/x;LW1/d;Lf2/a;Lm0/m;La0/m;I)V
    .locals 10

    const-string v0, "textData"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, La0/q;

    const v0, -0x47102b40

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    invoke-static {p2, p4}, LG5/M3;->b(Lf2/a;La0/m;)J

    move-result-wide v7

    new-instance v0, LU1/g;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, LU1/g;-><init>(LR1/x;LW1/d;JI)V

    new-instance v9, LU1/g;

    const/4 v6, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, LU1/g;-><init>(LR1/x;LW1/d;JI)V

    shr-int/lit8 v1, p5, 0x6

    and-int/lit8 v1, v1, 0x70

    invoke-static {v0, p3, v9, p4, v1}, LJ0/k;->a(Lsb/k;Lm0/m;Lsb/k;La0/m;I)V

    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_0

    new-instance v7, LU1/h;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, LU1/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v7, p4, La0/i0;->d:Lsb/n;

    :cond_0
    return-void
.end method

.method public static final b(LR1/x;FLf2/a;Lm0/m;La0/m;I)V
    .locals 7

    const-string p3, "textColor"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, La0/q;

    const p3, 0x6314cf9d

    invoke-virtual {p4, p3}, La0/q;->S(I)La0/q;

    sget-object p3, Lm0/j;->a:Lm0/j;

    new-instance v1, LW1/d;

    sget-object v0, Le2/a;->DP:Le2/a;

    const/16 v2, 0x258

    invoke-direct {v1, p1, v0, v2}, LW1/d;-><init>(FLe2/a;I)V

    shr-int/lit8 v0, p5, 0x3

    and-int/lit16 v0, v0, 0x1c00

    const/16 v2, 0x208

    or-int v5, v2, v0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LG5/C2;->a(LR1/x;LW1/d;Lf2/a;Lm0/m;La0/m;I)V

    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_0

    new-instance v6, LU1/e;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, LU1/e;-><init>(LR1/x;FLf2/a;Lm0/m;I)V

    iput-object v6, p4, La0/i0;->d:Lsb/n;

    :cond_0
    return-void
.end method

.method public static final c(LR1/x;JLf2/a;Lm0/m;FLa0/m;I)V
    .locals 12

    const-string v0, "textData"

    move-object v7, p0

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    move-object v8, p3

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p6

    check-cast v0, La0/q;

    const v1, 0x46d6c5a8

    invoke-virtual {v0, v1}, La0/q;->S(I)La0/q;

    sget-object v9, Lm0/j;->a:Lm0/j;

    new-instance v10, LW1/d;

    invoke-static {p1, p2}, LH0/m;->a(J)F

    move-result v2

    sget-object v3, Le2/a;->SP:Le2/a;

    const/4 v6, 0x0

    const/16 v4, 0x190

    move-object v1, v10

    move/from16 v5, p5

    invoke-direct/range {v1 .. v6}, LW1/d;-><init>(FLe2/a;IFI)V

    shr-int/lit8 v1, p7, 0x3

    and-int/lit16 v1, v1, 0x1c00

    const/16 v2, 0x208

    or-int v6, v2, v1

    move-object v1, p0

    move-object v2, v10

    move-object v3, p3

    move-object v4, v9

    move-object v5, v0

    invoke-static/range {v1 .. v6}, LG5/C2;->a(LR1/x;LW1/d;Lf2/a;Lm0/m;La0/m;I)V

    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v10, LU1/f;

    const/4 v11, 0x0

    move-object v1, v10

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, v9

    move/from16 v7, p5

    move/from16 v8, p7

    move v9, v11

    invoke-direct/range {v1 .. v9}, LU1/f;-><init>(LR1/x;JLf2/a;Ljava/lang/Object;FII)V

    iput-object v10, v0, La0/i0;->d:Lsb/n;

    :cond_0
    return-void
.end method

.method public static final d(Landroid/widget/TextView;LR1/x;LW1/d;J)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LR1/x;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p3, p4}, Ls0/e;->e(J)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p3, p1, LR1/x;->h:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    sget-object p3, Le2/a;->DP:Le2/a;

    const/4 p4, 0x1

    iget-object v0, p2, LW1/d;->b:Le2/a;

    const/4 v1, 0x2

    iget v2, p2, LW1/d;->a:F

    if-ne v0, p3, :cond_2

    invoke-virtual {p0, p4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    iget v0, p2, LW1/d;->d:F

    cmpg-float p3, v0, p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p3, p3, v0

    if-lez p3, :cond_4

    mul-float/2addr v2, v0

    invoke-virtual {p0, p4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    iget p3, p1, LR1/x;->e:I

    if-ne p3, p4, :cond_5

    move p3, p4

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    :goto_3
    const/4 v0, 0x5

    if-eqz p3, :cond_6

    move p3, p4

    goto :goto_4

    :cond_6
    move p3, v0

    :goto_4
    invoke-virtual {p0, p3}, Landroid/view/View;->setTextDirection(I)V

    const/16 p3, 0x190

    iget p2, p2, LW1/d;->c:I

    invoke-static {p2, p3}, Le2/d;->a(II)Z

    move-result p3

    if-eqz p3, :cond_7

    const p2, 0x7f15024e

    goto :goto_5

    :cond_7
    const/16 p3, 0x258

    invoke-static {p2, p3}, Le2/d;->a(II)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p2, p1, LR1/x;->f:Le2/c;

    sget-object p3, Le2/c;->d:Le2/c;

    invoke-static {p2, p3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const p2, 0x7f150251

    goto :goto_5

    :cond_8
    sget-object p3, Le2/c;->c:Le2/c;

    invoke-static {p2, p3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const p2, 0x7f150250

    goto :goto_5

    :cond_9
    const p2, 0x7f15024f

    goto :goto_5

    :cond_a
    const/16 p3, 0x2bc

    invoke-static {p2, p3}, Le2/d;->a(II)Z

    move-result p2

    if-eqz p2, :cond_b

    const p2, 0x7f15024b

    goto :goto_5

    :cond_b
    const p2, 0x7f15024d

    :goto_5
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget p2, p1, LR1/x;->d:I

    invoke-static {p2, p4}, Le2/e;->a(II)Z

    move-result p3

    const/4 v2, 0x3

    if-eqz p3, :cond_d

    :cond_c
    move v0, v1

    goto :goto_6

    :cond_d
    invoke-static {p2, v1}, Le2/e;->a(II)Z

    move-result p3

    if-eqz p3, :cond_e

    move v0, v2

    goto :goto_6

    :cond_e
    invoke-static {p2, v2}, Le2/e;->a(II)Z

    move-result p3

    const/4 v3, 0x4

    if-eqz p3, :cond_f

    move v0, v3

    goto :goto_6

    :cond_f
    invoke-static {p2, v3}, Le2/e;->a(II)Z

    move-result p3

    if-eqz p3, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {p2, v0}, Le2/e;->a(II)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 v0, 0x6

    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setTextAlignment(I)V

    iget p2, p1, LR1/x;->g:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-boolean p2, p1, LR1/x;->i:Z

    if-eqz p2, :cond_11

    iget-object p2, p1, LR1/x;->j:Le2/k;

    iget p3, p2, Le2/k;->a:F

    iget-wide v3, p2, Le2/k;->d:J

    invoke-static {v3, v4}, Ls0/e;->e(J)I

    move-result v0

    iget v3, p2, Le2/k;->b:F

    iget p2, p2, Le2/k;->c:F

    invoke-virtual {p0, p3, v3, p2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_11
    iget p1, p1, LR1/x;->l:I

    invoke-static {p1, p4}, Le2/m;->a(II)Z

    move-result p2

    const/16 p3, 0x30

    if-eqz p2, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {p1, v1}, Le2/m;->a(II)Z

    move-result p2

    if-eqz p2, :cond_13

    const/16 p3, 0x10

    goto :goto_7

    :cond_13
    invoke-static {p1, v2}, Le2/m;->a(II)Z

    move-result p1

    if-eqz p1, :cond_14

    const/16 p3, 0x50

    :cond_14
    :goto_7
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public static final e(Lxc/m;LAb/u;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final f(J)D
    .locals 4

    const/16 v0, 0xb

    ushr-long v0, p0, v0

    long-to-double v0, v0

    const/16 v2, 0x800

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr p0, v2

    long-to-double p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static final g(Landroid/content/Context;Lx1/o;Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 6

    sget-object v2, Ld2/j;->a:Ld2/j;

    new-instance v4, LG1/a;

    const/4 v0, 0x0

    invoke-direct {v4, p2, v0}, LG1/a;-><init>(Lsb/n;Lib/c;)V

    instance-of p2, p1, Lz1/e;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "updateAppWidgetState / "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " "

    const-string v3, "GWT:GlanceAppWidgetState"

    invoke-static {v0, v1, p2, v3}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ld2/f;->a:Ld2/f;

    check-cast p1, Lz1/e;

    iget p1, p1, Lz1/e;->a:I

    invoke-static {p1}, Lz1/u;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ld2/f;->d(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The glance ID is not the one of an App Widget"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
