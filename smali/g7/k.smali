.class public abstract Lg7/k;
.super Lg7/g;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lg7/i;Lk7/p;Lk7/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg7/k;->e:I

    invoke-direct {p0, p1, p2, p3}, Lg7/g;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    return-void
.end method

.method public constructor <init>(Lk7/p;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lg7/k;->e:I

    sget-object v0, Lg7/j;->b:Lg7/i;

    sget-object v1, Lk7/l;->c:Lk7/l;

    invoke-direct {p0, v0, p1, v1}, Lg7/g;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    return-void
.end method

.method private final k(Ln7/b;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lg7/k;->e:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lg7/g;->b:Lg7/i;

    iget-object p0, p0, Lg7/i;->d:LG5/v3;

    invoke-virtual {p0}, LG5/v3;->d()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg7/g;->b:Lg7/i;

    iget-object v1, v0, Lg7/i;->d:LG5/v3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lg7/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0}, LG5/v3;->i(Lg7/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0}, LG5/v3;->j(Lg7/k;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " // "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(Lg7/i;)Lg7/g;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(I)Lg7/g;
    .locals 1

    iget v0, p0, Lg7/k;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg7/g;->d:Lk7/l;

    invoke-virtual {v0, p1}, Lk7/l;->n(I)Lk7/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg7/g;->i(Lk7/l;)Lg7/g;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lg7/g;->d:Lk7/l;

    invoke-virtual {v0, p1}, Lk7/l;->n(I)Lk7/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg7/g;->i(Lk7/l;)Lg7/g;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ln7/b;)V
    .locals 1

    iget v0, p0, Lg7/k;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg7/g;->b:Lg7/i;

    iget-object v0, v0, Lg7/i;->d:LG5/v3;

    invoke-virtual {v0, p1, p0}, LG5/v3;->w(Ln7/b;Lg7/k;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
