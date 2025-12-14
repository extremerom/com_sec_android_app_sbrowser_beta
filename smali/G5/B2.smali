.class public abstract LG5/B2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LR1/p;Lm0/m;Lz0/g;ZLa0/m;II)V
    .locals 9

    const-string v0, "modifier"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, La0/q;

    const v0, -0x4722cfff

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    sget-object p2, LR1/o;->Icon:LR1/o;

    iget-object v0, p0, LR1/p;->d:LR1/o;

    if-ne v0, p2, :cond_0

    sget-object p2, Lz0/h;->b:Lz0/g;

    goto :goto_0

    :cond_0
    sget-object p2, Lz0/h;->a:Lz0/g;

    :goto_0
    and-int/lit16 v0, p5, -0x381

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    iget-object v1, p0, LR1/p;->b:Lx1/u;

    instance-of v2, v1, Lx1/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const v2, -0x45e57f8c

    invoke-virtual {p4, v2}, La0/q;->R(I)V

    sget-object v2, Landroidx/compose/ui/platform/h;->a:La0/L0;

    invoke-virtual {p4, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    check-cast v1, Lx1/a;

    iget v1, v1, Lx1/a;->a:I

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v4}, La0/q;->p(Z)V

    move-object v2, v1

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lx1/f;

    if-eqz v2, :cond_3

    const v2, -0x45e57e17

    invoke-virtual {p4, v2}, La0/q;->R(I)V

    invoke-virtual {p4, v4}, La0/q;->p(Z)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Lx1/f;

    iget-object v1, v1, Lx1/f;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    const v1, -0x76ca3966

    invoke-virtual {p4, v1}, La0/q;->R(I)V

    invoke-virtual {p4, v4}, La0/q;->p(Z)V

    move-object v2, v3

    :goto_2
    iget-object v1, p0, LR1/p;->e:Lf2/a;

    const v5, -0x45e57d81

    invoke-virtual {p4, v5}, La0/q;->R(I)V

    if-nez v1, :cond_4

    move-object v5, v3

    goto :goto_3

    :cond_4
    invoke-static {v1, p4}, LG5/M3;->b(Lf2/a;La0/m;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ls0/e;->e(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v5, v1

    :goto_3
    invoke-virtual {p4, v4}, La0/q;->p(Z)V

    if-eqz v2, :cond_5

    new-instance v7, LU1/b;

    invoke-direct {v7, p0, p2, v5, p3}, LU1/b;-><init>(LR1/p;Lz0/g;Ljava/lang/Integer;Z)V

    new-instance v8, LU1/c;

    move-object v1, v8

    move-object v3, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, LU1/c;-><init>(Landroid/graphics/drawable/Drawable;LR1/p;Lz0/g;Ljava/lang/Integer;Z)V

    and-int/lit8 v0, v0, 0x70

    invoke-static {v7, p1, v8, p4, v0}, LJ0/k;->a(Lsb/k;Lm0/m;Lsb/k;La0/m;I)V

    :cond_5
    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_6

    new-instance v0, LU1/d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, LU1/d;-><init>(LR1/p;Lm0/m;Lz0/g;ZII)V

    iput-object v0, p4, La0/i0;->d:Lsb/n;

    :cond_6
    return-void
.end method

.method public static final b(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lz0/g;Ljava/lang/Integer;Z)V
    .locals 0

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object p1, Lz0/h;->b:Lz0/g;

    invoke-static {p3, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    sget-object p1, Lz0/h;->a:Lz0/g;

    invoke-static {p3, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p5, :cond_3

    new-instance p1, LU1/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1}, Landroid/view/ViewOutlineProvider;-><init>()V

    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p5}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_4
    return-void
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_1

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final d(ILjava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x41

    const/4 v0, 0x0

    if-gt p1, p0, :cond_0

    const/16 p1, 0x5b

    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final e(Lxb/c;Lzb/d;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lzb/d;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7fffffff

    iget v0, p1, Lzb/b;->a:I

    iget p1, p1, Lzb/b;->b:I

    if-ge p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    sget-object p0, Lxb/d;->b:Lxb/a;

    invoke-virtual {p0, v0, p1}, Lxb/d;->c(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    if-le v0, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    sget-object p0, Lxb/d;->b:Lxb/a;

    invoke-virtual {p0, v0, p1}, Lxb/d;->c(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lxb/d;->b:Lxb/a;

    invoke-virtual {p0}, Lxb/a;->b()I

    move-result p0

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get random in empty range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(Ljava/lang/Object;Ljava/lang/Object;)Ldb/j;
    .locals 1

    new-instance v0, Ldb/j;

    invoke-direct {v0, p0, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-gt v4, v3, :cond_0

    const/16 v4, 0x5b

    if-ge v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
