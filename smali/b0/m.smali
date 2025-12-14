.class public final Lb0/m;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final d:Lb0/m;

.field public static final e:Lb0/m;

.field public static final f:Lb0/m;

.field public static final g:Lb0/m;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/m;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb0/m;-><init>(III)V

    sput-object v0, Lb0/m;->d:Lb0/m;

    new-instance v0, Lb0/m;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lb0/m;-><init>(III)V

    sput-object v0, Lb0/m;->e:Lb0/m;

    new-instance v0, Lb0/m;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lb0/m;-><init>(III)V

    sput-object v0, Lb0/m;->f:Lb0/m;

    new-instance v0, Lb0/m;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Lb0/m;-><init>(III)V

    sput-object v0, Lb0/m;->g:Lb0/m;

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    iput p3, p0, Lb0/m;->c:I

    invoke-direct {p0, p1, p2}, Lb0/C;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 3

    iget p0, p0, Lb0/m;->c:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0}, LN/h;->c(I)I

    move-result p0

    instance-of p1, p2, La0/r0;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, La0/r0;

    iget-object p1, p1, La0/r0;->a:La0/q0;

    iget-object v0, p4, LB0/M;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget p1, p3, La0/y0;->s:I

    invoke-virtual {p3, p1, p0}, La0/y0;->E(II)I

    move-result p1

    invoke-virtual {p3, p1}, La0/y0;->g(I)I

    move-result p1

    iget-object v0, p3, La0/y0;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    instance-of p1, v1, La0/r0;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, La0/y0;->o()I

    move-result p1

    iget p2, p3, La0/y0;->s:I

    invoke-virtual {p3, p2, p0}, La0/y0;->E(II)I

    move-result p0

    sub-int/2addr p1, p0

    check-cast v1, La0/r0;

    iget-object p0, v1, La0/r0;->a:La0/q0;

    const/4 p2, -0x1

    invoke-virtual {p4, p0, p1, p2, p2}, LB0/M;->n(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    instance-of p0, v1, La0/i0;

    if-eqz p0, :cond_2

    check-cast v1, La0/i0;

    invoke-virtual {v1}, La0/i0;->d()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/c;

    invoke-virtual {p1, p0}, LN/h;->c(I)I

    move-result p0

    instance-of p1, p2, La0/r0;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, La0/r0;

    iget-object p1, p1, La0/r0;->a:La0/q0;

    iget-object v1, p4, LB0/M;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p3, v0}, La0/y0;->c(La0/c;)I

    move-result p1

    invoke-virtual {p3, p1, p0}, La0/y0;->E(II)I

    move-result v0

    invoke-virtual {p3, v0}, La0/y0;->g(I)I

    move-result v0

    iget-object v1, p3, La0/y0;->c:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p2, v1, v0

    instance-of p2, v2, La0/r0;

    if-eqz p2, :cond_5

    invoke-virtual {p3}, La0/y0;->o()I

    move-result p2

    invoke-virtual {p3, p1, p0}, La0/y0;->E(II)I

    move-result p0

    sub-int/2addr p2, p0

    check-cast v2, La0/r0;

    iget-object p0, v2, La0/r0;->b:La0/c;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, La0/c;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3, p0}, La0/y0;->c(La0/c;)I

    move-result p0

    invoke-virtual {p3}, La0/y0;->o()I

    move-result p1

    iget-object v0, p3, La0/y0;->b:[I

    invoke-virtual {p3, p0}, La0/y0;->q(I)I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p3, v1}, La0/y0;->p(I)I

    move-result v1

    invoke-virtual {p3, v1, v0}, La0/y0;->f(I[I)I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    move p1, p0

    :goto_1
    iget-object p3, v2, La0/r0;->a:La0/q0;

    invoke-virtual {p4, p3, p2, p0, p1}, LB0/M;->n(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_5
    instance-of p0, v2, La0/i0;

    if-eqz p0, :cond_6

    check-cast v2, La0/i0;

    invoke-virtual {v2}, La0/i0;->d()V

    :cond_6
    :goto_2
    return-void

    :pswitch_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, La0/c;

    invoke-virtual {p1, p0}, LN/h;->c(I)I

    move-result p0

    invoke-virtual {p2}, LJ2/i0;->u()V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p4}, La0/y0;->c(La0/c;)I

    move-result p1

    invoke-virtual {p3, p1}, La0/y0;->w(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, LJ2/i0;->j(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lsb/a;

    invoke-interface {p4}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/c;

    invoke-virtual {p1, p0}, LN/h;->c(I)I

    move-result p0

    const-string p1, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>"

    invoke-static {p2, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v0}, La0/y0;->c(La0/c;)I

    move-result p1

    invoke-virtual {p3, p1, p4}, La0/y0;->L(ILjava/lang/Object;)V

    invoke-virtual {p2, p0, p4}, LJ2/i0;->k(ILjava/lang/Object;)V

    invoke-virtual {p2, p4}, LJ2/i0;->f(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lb0/m;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, LA/b;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "groupSlotIndex"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, LA/b;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "groupSlotIndex"

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, LA/b;->c(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "insertIndex"

    goto :goto_2

    :cond_2
    invoke-super {p0, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, LA/b;->c(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "insertIndex"

    goto :goto_3

    :cond_3
    invoke-super {p0, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lb0/m;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "value"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "value"

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "anchor"

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "groupAnchor"

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "factory"

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "groupAnchor"

    goto :goto_3

    :cond_5
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
