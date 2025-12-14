.class public final LN/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LN/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/preferences/protobuf/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LN/h;->a:I

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LN/h;->d:I

    sget-object v0, Landroidx/datastore/preferences/protobuf/D;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, LN/h;->e:Ljava/lang/Object;

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/h;->b:LN/h;

    return-void
.end method

.method public constructor <init>(Landroidx/glance/appwidget/protobuf/j;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LN/h;->a:I

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LN/h;->d:I

    sget-object v0, Landroidx/glance/appwidget/protobuf/D;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, LN/h;->e:Ljava/lang/Object;

    iput-object p0, p1, Landroidx/glance/appwidget/protobuf/j;->b:LN/h;

    return-void
.end method

.method public constructor <init>(Lb0/D;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LN/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/h;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LN/h;->a:I

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LN/h;->d:I

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, LN/h;->e:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->j:Ljava/lang/Object;

    return-void
.end method

.method public static g0(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroidx/glance/appwidget/protobuf/F;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h0(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->e()Landroidx/datastore/preferences/protobuf/F;

    move-result-object p0

    throw p0
.end method

.method public static i0(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->e()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static j0(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroidx/glance/appwidget/protobuf/F;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k0(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->e()Landroidx/datastore/preferences/protobuf/F;

    move-result-object p0

    throw p0
.end method

.method public static l0(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->e()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    invoke-virtual {p0, p1, p2}, LN/h;->y(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public B(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    invoke-virtual {p0, p1, p2}, LN/h;->z(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public C()I
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->l()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public D(Ljava/util/List;)V
    .locals 3

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/A;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/A;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/z;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->m()I

    throw p1

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->m()I

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, v1}, LN/h;->b0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/B;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->l()I

    throw p1

    :cond_12
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->l()I

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    if-lt v0, v1, :cond_15

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public E()J
    .locals 2

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->m()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public F(Ljava/util/List;)V
    .locals 5

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/N;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/N;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/M;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->n()J

    throw p1

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->n()J

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->n()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, v1}, LN/h;->b0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/M;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->m()J

    throw p1

    :cond_12
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->m()J

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    if-lt v0, v1, :cond_15

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public G(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/h;->a:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/h;->e(I)I

    move-result v1

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/h0;->a()Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Landroidx/datastore/preferences/protobuf/h;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroidx/datastore/preferences/protobuf/h;->a:I

    invoke-interface {p1, v2, p0, p2}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;LN/h;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-interface {p1, v2}, Landroidx/datastore/preferences/protobuf/h0;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/h;->a(I)V

    iget p0, v0, Landroidx/datastore/preferences/protobuf/h;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Landroidx/datastore/preferences/protobuf/h;->a:I

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/h;->d(I)V

    return-object v2

    :cond_0
    new-instance p0, Landroidx/datastore/preferences/protobuf/F;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public H(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v1

    iget v2, v0, Lcom/google/crypto/tink/shaded/protobuf/i;->c:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v1

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a()Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Lcom/google/crypto/tink/shaded/protobuf/i;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/crypto/tink/shaded/protobuf/i;->c:I

    invoke-interface {p1, v2, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/f0;->e(Ljava/lang/Object;LN/h;Lcom/google/crypto/tink/shaded/protobuf/o;)V

    invoke-interface {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(Ljava/lang/Object;)V

    iget p0, v0, Lcom/google/crypto/tink/shaded/protobuf/i;->h:I

    if-nez p0, :cond_0

    iget p0, v0, Lcom/google/crypto/tink/shaded/protobuf/i;->c:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lcom/google/crypto/tink/shaded/protobuf/i;->c:I

    iput v1, v0, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->t()V

    return-object v2

    :cond_0
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/G;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/G;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public I(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    invoke-virtual {p0, p1, p2}, LN/h;->G(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public J(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    invoke-virtual {p0, p1, p2}, LN/h;->H(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public K()I
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->v()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public L(Ljava/util/List;)V
    .locals 5

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/A;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/A;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->i0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, LN/h;->d:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->i0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/z;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_e

    if-nez p1, :cond_d

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_c

    if-eq p0, v1, :cond_b

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_b
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->o()I

    throw p1

    :cond_c
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->g0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->o()I

    throw p1

    :cond_d
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_e
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_12

    if-ne v0, v1, :cond_11

    :cond_f
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    goto :goto_1

    :cond_11
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_12
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->g0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_13
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->o()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result p0

    if-lt p0, v0, :cond_13

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/B;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_17

    if-nez p1, :cond_16

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_15

    if-eq p0, v1, :cond_14

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_14
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->v()I

    throw p1

    :cond_15
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->h0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->v()I

    throw p1

    :cond_16
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_17
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_1b

    if-ne v0, v1, :cond_1a

    :cond_18
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2

    :cond_19
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_18

    iput v0, p0, LN/h;->d:I

    goto :goto_2

    :cond_1a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_1b
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->h0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_1c
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->v()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result p0

    if-lt p0, v0, :cond_1c

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public M()J
    .locals 2

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->w()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public N(Ljava/util/List;)V
    .locals 4

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/N;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/N;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->l0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->l0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v0, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/M;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->j0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->p()J

    throw p1

    :cond_a
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->p()J

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->j0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_d
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result p0

    if-lt p0, v0, :cond_d

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/M;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->k0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->w()J

    throw p1

    :cond_12
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->w()J

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->k0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_15
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->w()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result p0

    if-lt p0, v0, :cond_15

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public O()I
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->x()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public P(Ljava/util/List;)V
    .locals 3

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/A;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/A;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/z;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->q()I

    throw p1

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->q()I

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, v1}, LN/h;->b0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/B;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->x()I

    throw p1

    :cond_12
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->x()I

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    if-lt v0, v1, :cond_15

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Q()J
    .locals 2

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->y()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public R(Ljava/util/List;)V
    .locals 5

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/N;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/N;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/M;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->r()J

    throw p1

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->r()J

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->r()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, v1}, LN/h;->b0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/M;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->y()J

    throw p1

    :cond_12
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->y()J

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->y()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    if-lt v0, v1, :cond_15

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public S()Ljava/lang/String;
    .locals 5

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->d:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->b:[B

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->s()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h;->d:[B

    if-lez v0, :cond_3

    iget v2, p0, Landroidx/datastore/preferences/protobuf/h;->e:I

    iget v3, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_3

    new-instance v2, Ljava/lang/String;

    sget-object v4, Landroidx/datastore/preferences/protobuf/D;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    const-string v2, ""

    goto :goto_1

    :cond_4
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h;->e:I

    if-gt v0, v2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/h;->D(I)V

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    sget-object v4, Landroidx/datastore/preferences/protobuf/D;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/h;->n(I)[B

    move-result-object p0

    sget-object v0, Landroidx/datastore/preferences/protobuf/D;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public T(Ljava/util/List;)V
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LN/h;->U(Ljava/util/List;Z)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LN/h;->U(Ljava/util/List;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public U(Ljava/util/List;Z)V
    .locals 4

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/J;

    iget-object v1, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/J;

    :cond_0
    invoke-virtual {p0}, LN/h;->l()Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/J;->k0(Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget p2, p0, LN/h;->b:I

    if-eq p1, p2, :cond_0

    iput p1, p0, LN/h;->d:I

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, LN/h;->W()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LN/h;->S()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v2, p0, LN/h;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :pswitch_0
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/I;

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_8

    if-nez p2, :cond_8

    move-object v0, p1

    check-cast v0, Landroidx/glance/appwidget/protobuf/I;

    :cond_6
    invoke-virtual {p0}, LN/h;->k()Landroidx/glance/appwidget/protobuf/g;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/glance/appwidget/protobuf/I;->W(Landroidx/glance/appwidget/protobuf/g;)V

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result p1

    iget p2, p0, LN/h;->b:I

    if-eq p1, p2, :cond_6

    iput p1, p0, LN/h;->d:I

    goto :goto_3

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0, v1}, LN/h;->d0(I)V

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v1}, LN/h;->d0(I)V

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->s()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v3, p0, LN/h;->b:I

    if-eq v0, v3, :cond_8

    iput v0, p0, LN/h;->d:I

    :goto_3
    return-void

    :cond_b
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :pswitch_1
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/I;

    iget-object v1, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_e

    if-nez p2, :cond_e

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/I;

    :cond_c
    invoke-virtual {p0}, LN/h;->j()Landroidx/datastore/preferences/protobuf/g;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/I;->d0(Landroidx/datastore/preferences/protobuf/g;)V

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result p1

    iget p2, p0, LN/h;->b:I

    if-eq p1, p2, :cond_c

    iput p1, p0, LN/h;->d:I

    goto :goto_5

    :cond_e
    if-eqz p2, :cond_f

    invoke-virtual {p0}, LN/h;->W()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, LN/h;->S()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v2, p0, LN/h;->b:I

    if-eq v0, v2, :cond_e

    iput v0, p0, LN/h;->d:I

    :goto_5
    return-void

    :cond_11
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public V(Ljava/util/List;)V
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LN/h;->U(Ljava/util/List;Z)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LN/h;->U(Ljava/util/List;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public W()Ljava/lang/String;
    .locals 5

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->d:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->b:[B

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/U;->K([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->s()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/h;->e:I

    sub-int v3, v2, v1

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/h;->d:[B

    if-gt v0, v3, :cond_3

    if-lez v0, :cond_3

    add-int v2, v1, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    const-string p0, ""

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    if-gt v0, v2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/h;->D(I)V

    iput v0, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/h;->n(I)[B

    move-result-object v4

    :goto_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/A0;->a:Landroidx/datastore/preferences/protobuf/W;

    invoke-virtual {p0, v4, v1, v0}, Landroidx/datastore/preferences/protobuf/W;->f([BII)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public X()I
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public Y(Ljava/util/List;)V
    .locals 3

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/A;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/A;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/z;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    throw p1

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, v1}, LN/h;->b0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/B;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    throw p1

    :cond_12
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    if-lt v0, v1, :cond_15

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Z()J
    .locals 2

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->B()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(LL2/i;)V
    .locals 6

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, LN/h;->c:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, LN/h;->d:I

    and-int/2addr p1, v1

    iput p1, p0, LN/h;->c:I

    iget v1, p0, LN/h;->b:I

    if-ne p1, v1, :cond_1

    array-length p1, v0

    sub-int v2, p1, v1

    shl-int/lit8 v3, p1, 0x1

    if-ltz v3, :cond_0

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5, v1, p1, v0, v4}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, LN/h;->b:I

    invoke-static {v2, v5, v1, v0, v4}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-object v4, p0, LN/h;->e:Ljava/lang/Object;

    iput v5, p0, LN/h;->b:I

    iput p1, p0, LN/h;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, LN/h;->d:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Max array capacity exceeded"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public a0(Ljava/util/List;)V
    .locals 5

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/N;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/N;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/M;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->w()J

    throw p1

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->w()J

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->w()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, v1}, LN/h;->b0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/M;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->B()J

    throw p1

    :cond_12
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->B()J

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->B()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    if-lt v0, v1, :cond_15

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LN/h;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, LN/h;->b:I

    const/4 v0, 0x0

    iput v0, p0, LN/h;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iput v0, p0, LN/h;->b:I

    :goto_0
    iget v0, p0, LN/h;->b:I

    if-eqz v0, :cond_2

    iget p0, p0, LN/h;->c:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    goto :goto_2

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    :goto_2
    return p0

    :pswitch_0
    iget v0, p0, LN/h;->d:I

    if-eqz v0, :cond_3

    iput v0, p0, LN/h;->b:I

    const/4 v0, 0x0

    iput v0, p0, LN/h;->d:I

    goto :goto_3

    :cond_3
    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iput v0, p0, LN/h;->b:I

    :goto_3
    iget v0, p0, LN/h;->b:I

    if-eqz v0, :cond_5

    iget p0, p0, LN/h;->c:I

    if-ne v0, p0, :cond_4

    goto :goto_4

    :cond_4
    ushr-int/lit8 p0, v0, 0x3

    goto :goto_5

    :cond_5
    :goto_4
    const p0, 0x7fffffff

    :goto_5
    return p0

    :pswitch_1
    iget v0, p0, LN/h;->d:I

    if-eqz v0, :cond_6

    iput v0, p0, LN/h;->b:I

    const/4 v0, 0x0

    iput v0, p0, LN/h;->d:I

    goto :goto_6

    :cond_6
    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iput v0, p0, LN/h;->b:I

    :goto_6
    iget v0, p0, LN/h;->b:I

    if-eqz v0, :cond_8

    iget p0, p0, LN/h;->c:I

    if-ne v0, p0, :cond_7

    goto :goto_7

    :cond_7
    ushr-int/lit8 p0, v0, 0x3

    goto :goto_8

    :cond_8
    :goto_7
    const p0, 0x7fffffff

    :goto_8
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b0(I)V
    .locals 0

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->e()Landroidx/glance/appwidget/protobuf/F;

    move-result-object p0

    throw p0
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Lb0/D;

    iget-object v0, v0, Lb0/D;->d:[I

    iget p0, p0, LN/h;->c:I

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public c0(I)V
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :pswitch_0
    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result p0

    if-ne p0, p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->f()Landroidx/datastore/preferences/protobuf/F;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public d(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Lb0/D;

    iget-object v0, v0, Lb0/D;->f:[Ljava/lang/Object;

    iget p0, p0, LN/h;->d:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public d0(I)V
    .locals 0

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, LN/h;->b:I

    return p0

    :pswitch_0
    iget p0, p0, LN/h;->b:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public e0(I)V
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :pswitch_0
    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V
    .locals 2

    iget v0, p0, LN/h;->c:I

    iget v1, p0, LN/h;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, LN/h;->c:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Landroidx/glance/appwidget/protobuf/f0;->e(Ljava/lang/Object;LN/h;Landroidx/glance/appwidget/protobuf/n;)V

    iget p1, p0, LN/h;->b:I

    iget p2, p0, LN/h;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, LN/h;->c:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Landroidx/glance/appwidget/protobuf/F;

    const-string p2, "Failed to parse the message."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, LN/h;->c:I

    throw p1
.end method

.method public f0()Z
    .locals 2

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, LN/h;->b:I

    iget p0, p0, LN/h;->c:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/h;->E(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public g(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V
    .locals 4

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v1

    iget v2, v0, Landroidx/glance/appwidget/protobuf/j;->a:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/j;->e(I)I

    move-result v1

    iget v2, v0, Landroidx/glance/appwidget/protobuf/j;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/glance/appwidget/protobuf/j;->a:I

    invoke-interface {p2, p1, p0, p3}, Landroidx/glance/appwidget/protobuf/f0;->e(Ljava/lang/Object;LN/h;Landroidx/glance/appwidget/protobuf/n;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/glance/appwidget/protobuf/j;->a(I)V

    iget p0, v0, Landroidx/glance/appwidget/protobuf/j;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Landroidx/glance/appwidget/protobuf/j;->a:I

    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/j;->d(I)V

    return-void

    :cond_0
    new-instance p0, Landroidx/glance/appwidget/protobuf/F;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->i()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Ljava/util/List;)V
    .locals 3

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/d;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/d;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/d;->i(Z)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/d;->i(Z)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/d;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->f()Z

    throw p1

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->f()Z

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, v1}, LN/h;->b0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/d;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    throw p1

    :cond_12
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    if-lt v0, v1, :cond_15

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()Landroidx/datastore/preferences/protobuf/g;
    .locals 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->s()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/h;->e:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/h;->d:[B

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    invoke-static {v3, v2, v0}, Landroidx/datastore/preferences/protobuf/g;->g([BII)Landroidx/datastore/preferences/protobuf/g;

    move-result-object v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    goto :goto_2

    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Landroidx/datastore/preferences/protobuf/g;->c:Landroidx/datastore/preferences/protobuf/g;

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/h;->o(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length p0, v1

    invoke-static {v1, v2, p0}, Landroidx/datastore/preferences/protobuf/g;->g([BII)Landroidx/datastore/preferences/protobuf/g;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_2

    :cond_2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    iget v4, p0, Landroidx/datastore/preferences/protobuf/h;->e:I

    sub-int v5, v4, v1

    iget v6, p0, Landroidx/datastore/preferences/protobuf/h;->i:I

    add-int/2addr v6, v4

    iput v6, p0, Landroidx/datastore/preferences/protobuf/h;->i:I

    iput v2, p0, Landroidx/datastore/preferences/protobuf/h;->g:I

    iput v2, p0, Landroidx/datastore/preferences/protobuf/h;->e:I

    sub-int v4, v0, v5

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/h;->p(I)Ljava/util/ArrayList;

    move-result-object p0

    new-array v0, v0, [B

    invoke-static {v3, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v5, v1

    goto :goto_1

    :cond_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/g;->c:Landroidx/datastore/preferences/protobuf/g;

    new-instance p0, Landroidx/datastore/preferences/protobuf/g;

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/g;-><init>([B)V

    goto :goto_0

    :goto_2
    return-object v1
.end method

.method public k()Landroidx/glance/appwidget/protobuf/g;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->d0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/j;->g()Landroidx/glance/appwidget/protobuf/g;

    move-result-object p0

    return-object p0
.end method

.method public l()Lcom/google/crypto/tink/shaded/protobuf/g;
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->b:[B

    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->d:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    invoke-static {v1, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->d:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/i;->f:I

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/E;->b:[B

    :goto_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-direct {v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/g;-><init>([B)V

    :goto_1
    return-object v1

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public m(Ljava/util/List;)V
    .locals 2

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, LN/h;->l()Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :pswitch_0
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_3
    invoke-virtual {p0}, LN/h;->k()Landroidx/glance/appwidget/protobuf/g;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_3

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :cond_5
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :pswitch_1
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {p0}, LN/h;->j()Landroidx/datastore/preferences/protobuf/g;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n()D
    .locals 2

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->g()D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public o(Ljava/util/List;)V
    .locals 4

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/m;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/m;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->l0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(D)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(D)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->l0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v0, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/l;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->j0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->h()D

    throw p1

    :cond_a
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->h()D

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->j0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_d
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->h()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result p0

    if-lt p0, v0, :cond_d

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->h()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/l;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->k0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->g()D

    throw p1

    :cond_12
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->g()D

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->k0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_15
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->g()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result p0

    if-lt p0, v0, :cond_15

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->g()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()I
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->h()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public q(Ljava/util/List;)V
    .locals 3

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/A;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/A;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/z;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->i()I

    throw p1

    :cond_a
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->i()I

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v0

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, v1}, LN/h;->b0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/B;

    const/4 v1, 0x2

    iget-object v2, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->h()I

    throw p1

    :cond_12
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->h()I

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v1

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    if-lt v0, v1, :cond_15

    invoke-virtual {p0, v1}, LN/h;->c0(I)V

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r(Landroidx/datastore/preferences/protobuf/F0;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/i;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, LN/h;->Z()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, LN/h;->X()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, LN/h;->W()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, LN/h;->Q()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, LN/h;->O()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, LN/h;->M()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, LN/h;->K()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, LN/h;->e0(I)V

    sget-object p1, Landroidx/datastore/preferences/protobuf/e0;->c:Landroidx/datastore/preferences/protobuf/e0;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/e0;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, LN/h;->G(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, LN/h;->E()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, LN/h;->C()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, LN/h;->w()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, LN/h;->u()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, LN/h;->s()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, LN/h;->p()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, LN/h;->n()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, LN/h;->j()Landroidx/datastore/preferences/protobuf/g;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, LN/h;->h()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public s()I
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->i()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public t(Ljava/util/List;)V
    .locals 5

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/A;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/A;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->i0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, LN/h;->d:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->i0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/z;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_e

    if-nez p1, :cond_d

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_c

    if-eq p0, v1, :cond_b

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_b
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->j()I

    throw p1

    :cond_c
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->g0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->j()I

    throw p1

    :cond_d
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_e
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_12

    if-ne v0, v1, :cond_11

    :cond_f
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    goto :goto_1

    :cond_11
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_12
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->g0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_13
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->j()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result p0

    if-lt p0, v0, :cond_13

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/B;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_17

    if-nez p1, :cond_16

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_15

    if-eq p0, v1, :cond_14

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_14
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->i()I

    throw p1

    :cond_15
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->h0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->i()I

    throw p1

    :cond_16
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_17
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_1b

    if-ne v0, v1, :cond_1a

    :cond_18
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2

    :cond_19
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_18

    iput v0, p0, LN/h;->d:I

    goto :goto_2

    :cond_1a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_1b
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->h0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_1c
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->i()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result p0

    if-lt p0, v0, :cond_1c

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u()J
    .locals 2

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->j()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public v(Ljava/util/List;)V
    .locals 4

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/N;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/N;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->l0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LN/h;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->l0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v0, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LN/h;->d:I

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/M;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_a

    if-eq p0, v1, :cond_9

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->j0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->k()J

    throw p1

    :cond_a
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->k()J

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_c
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_f

    if-ne v0, v1, :cond_e

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->j0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_d
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result p0

    if-lt p0, v0, :cond_d

    goto :goto_1

    :cond_e
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/M;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_12

    if-eq p0, v1, :cond_11

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->k0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->j()J

    throw p1

    :cond_12
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->j()J

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_14
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->k0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_15
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result p0

    if-lt p0, v0, :cond_15

    goto :goto_2

    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_17
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_17

    iput v0, p0, LN/h;->d:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w()F
    .locals 1

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LN/h;->e0(I)V

    iget-object p0, p0, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->k()F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Ljava/util/List;)V
    .locals 5

    iget v0, p0, LN/h;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/u;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/u;

    iget p1, p0, LN/h;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/u;->q(F)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p1

    iget v1, p0, LN/h;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, LN/h;->d:I

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->i0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/u;->q(F)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, LN/h;->d:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p0

    invoke-static {p0}, LN/h;->i0(I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->e()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/t;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_e

    if-nez p1, :cond_d

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_c

    if-eq p0, v1, :cond_b

    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_b
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->l()F

    throw p1

    :cond_c
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->g0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->l()F

    throw p1

    :cond_d
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_e
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_12

    if-ne v0, v1, :cond_11

    :cond_f
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->l()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_f

    iput v0, p0, LN/h;->d:I

    goto :goto_1

    :cond_11
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_12
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result p0

    invoke-static {p0}, LN/h;->g0(I)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_13
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->l()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/j;->b()I

    move-result p0

    if-lt p0, v0, :cond_13

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/v;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LN/h;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_17

    if-nez p1, :cond_16

    iget p0, p0, LN/h;->b:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x0

    if-eq p0, v2, :cond_15

    if-eq p0, v1, :cond_14

    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_14
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->k()F

    throw p1

    :cond_15
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->h0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->k()F

    throw p1

    :cond_16
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_17
    iget v0, p0, LN/h;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_1b

    if-ne v0, v1, :cond_1a

    :cond_18
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->k()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2

    :cond_19
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result v0

    iget v1, p0, LN/h;->b:I

    if-eq v0, v1, :cond_18

    iput v0, p0, LN/h;->d:I

    goto :goto_2

    :cond_1a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0

    :cond_1b
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result p0

    invoke-static {p0}, LN/h;->h0(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result v0

    add-int/2addr v0, p0

    :cond_1c
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->b()I

    move-result p0

    if-lt p0, v0, :cond_1c

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public y(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LN/h;->c:I

    iget v1, p0, LN/h;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, LN/h;->c:I

    :try_start_0
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/h0;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;LN/h;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-interface {p1, v1}, Landroidx/datastore/preferences/protobuf/h0;->b(Ljava/lang/Object;)V

    iget p1, p0, LN/h;->b:I

    iget p2, p0, LN/h;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, LN/h;->c:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->e()Landroidx/datastore/preferences/protobuf/F;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, LN/h;->c:I

    throw p1
.end method

.method public z(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LN/h;->c:I

    iget v1, p0, LN/h;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, LN/h;->c:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/f0;->e(Ljava/lang/Object;LN/h;Lcom/google/crypto/tink/shaded/protobuf/o;)V

    invoke-interface {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(Ljava/lang/Object;)V

    iget p1, p0, LN/h;->b:I

    iget p2, p0, LN/h;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, LN/h;->c:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->e()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, LN/h;->c:I

    throw p1
.end method
