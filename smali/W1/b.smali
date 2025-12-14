.class public abstract LW1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    int-to-float v0, v0

    sput v0, LW1/b;->a:F

    const/16 v0, 0x12

    int-to-float v0, v0

    sput v0, LW1/b;->b:F

    return-void
.end method

.method public static a(Ljava/util/ArrayList;La0/m;)I
    .locals 7

    check-cast p1, La0/q;

    const v0, 0xec519b4    # 4.8589E-30f

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x2a40da5c

    invoke-virtual {p1, v1}, La0/q;->R(I)V

    sget-object v1, LR1/d;->d:La0/L0;

    invoke-virtual {p1, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM1/b;

    iget v2, v2, LM1/b;->a:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, LM1/b;->a(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v3}, La0/q;->p(Z)V

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eqz v2, :cond_6

    const p0, 0x2a40da8d

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    invoke-static {v3, v3}, LK1/b;->b(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x2a40dad3

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    const/16 p0, 0x64

    if-le v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-static {v0, v4, p0, p1}, LW1/b;->b(IZILa0/m;)I

    move-result p0

    invoke-virtual {p1, v3}, La0/q;->p(Z)V

    goto :goto_4

    :cond_2
    invoke-static {v3, v4}, LK1/b;->b(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x2a40db39

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    if-ge v0, v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-static {v0, v4, v6, p1}, LW1/b;->b(IZILa0/m;)I

    move-result p0

    invoke-virtual {p1, v3}, La0/q;->p(Z)V

    goto :goto_4

    :cond_4
    const p0, 0x2a40db92

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    if-ge v0, v5, :cond_5

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    invoke-static {v0, v4, v5, p1}, LW1/b;->b(IZILa0/m;)I

    move-result p0

    invoke-virtual {p1, v3}, La0/q;->p(Z)V

    :goto_4
    invoke-virtual {p1, v3}, La0/q;->p(Z)V

    goto :goto_5

    :cond_6
    const v2, 0x2a40dbf4

    invoke-virtual {p1, v2}, La0/q;->R(I)V

    invoke-virtual {p1, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM1/b;

    iget v1, v1, LM1/b;->a:I

    invoke-static {v1, v6}, LM1/b;->a(II)I

    move-result v1

    if-gtz v1, :cond_7

    invoke-static {p0}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1, v3}, La0/q;->p(Z)V

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_5
    invoke-virtual {p1, v3}, La0/q;->p(Z)V

    return p0
.end method

.method public static b(IZILa0/m;)I
    .locals 3

    check-cast p3, La0/q;

    const v0, -0x3f47a180

    invoke-virtual {p3, v0}, La0/q;->R(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "restrictVisibleItemCount "

    const-string v1, " doesn\'t allowed. return "

    const-string v2, " instead of "

    invoke-static {p0, p2, p1, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "GWT:LayoutDimension"

    invoke-static {p1, v1, p0, v2}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, La0/q;->p(Z)V

    return p2

    :cond_0
    invoke-virtual {p3, v0}, La0/q;->p(Z)V

    return p0
.end method
