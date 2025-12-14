.class public abstract LG5/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(La0/m;I)LW1/d;
    .locals 8

    check-cast p0, La0/q;

    const v0, -0x50841711

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    sget-object v0, LR1/d;->d:La0/L0;

    invoke-virtual {p0, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, LM1/b;->a(II)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const p1, -0x29f48d98

    invoke-virtual {p0, p1}, La0/q;->R(I)V

    new-instance p1, LW1/d;

    invoke-static {p0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v3

    sget-object v5, Le2/a;->SP:Le2/a;

    const v4, 0x7f07114d

    const/16 v6, 0x258

    const v7, 0x3f933333    # 1.15f

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;IF)V

    invoke-virtual {p0, v1}, La0/q;->p(Z)V

    goto :goto_1

    :cond_0
    const v0, -0x29f48cb5

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    new-instance v0, LW1/d;

    invoke-static {p0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    if-gt p1, v3, :cond_1

    const p1, 0x7f07114c

    goto :goto_0

    :cond_1
    const p1, 0x7f07114e

    :goto_0
    sget-object v3, Le2/a;->DP:Le2/a;

    const/16 v4, 0x258

    invoke-direct {v0, v2, p1, v3, v4}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {p0, v1}, La0/q;->p(Z)V

    move-object p1, v0

    :goto_1
    invoke-virtual {p0, v1}, La0/q;->p(Z)V

    return-object p1
.end method

.method public static b(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    const-string v0, "hidden_getDisplayCutoutForUdc"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/WindowInsets;

    invoke-static {v3, v0, v2}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/DisplayCutout;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(La0/m;)LW1/d;
    .locals 6

    check-cast p0, La0/q;

    const v0, 0x6f6dffe8    # 7.365732E28f

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    sget-object v0, LR1/d;->d:La0/L0;

    invoke-virtual {p0, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, LM1/b;->a(II)I

    move-result v1

    const/16 v2, 0x258

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    const v0, 0x5303d84a

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    new-instance v0, LW1/d;

    invoke-static {p0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v1

    sget-object v4, Le2/a;->DP:Le2/a;

    const v5, 0x7f071155

    invoke-direct {v0, v1, v5, v4, v2}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {p0, v3}, La0/q;->p(Z)V

    goto :goto_1

    :cond_0
    const v1, 0x5303d95b

    invoke-virtual {p0, v1}, La0/q;->R(I)V

    new-instance v1, LW1/d;

    invoke-static {p0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v0, v5}, LM1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Le2/a;->DP:Le2/a;

    goto :goto_0

    :cond_1
    sget-object v0, Le2/a;->SP:Le2/a;

    :goto_0
    const v5, 0x7f071154

    invoke-direct {v1, v4, v5, v0, v2}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {p0, v3}, La0/q;->p(Z)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v3}, La0/q;->p(Z)V

    return-object v0
.end method

.method public static d(Landroid/os/Parcel;ILandroid/os/Bundle;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static e(Landroid/os/Parcel;I[B)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static f(Landroid/os/Parcel;I[[B)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    array-length v0, p2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static g(Landroid/os/Parcel;ILandroid/os/IBinder;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static h(Landroid/os/Parcel;I[I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static i(Landroid/os/Parcel;ILjava/lang/Integer;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static k(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static l(Landroid/os/Parcel;I[Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static m(Landroid/os/Parcel;ILjava/util/ArrayList;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p1

    array-length v0, p2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-interface {v3, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v4, v3, v5

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static o(Landroid/os/Parcel;Ljava/util/List;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p0}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-interface {v3, p0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v4, v3, v5

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p2, p0}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static p(ILandroid/os/Parcel;)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method public static q(ILandroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v1, p0, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p0, v0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static r(Landroid/os/Parcel;II)V
    .locals 0

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
