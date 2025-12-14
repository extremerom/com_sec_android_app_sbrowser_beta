.class public final LR/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(ILjava/util/Collection;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LR/e;->a:I

    iput p1, p0, LR/e;->c:I

    iput-object p2, p0, LR/e;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lz0/G;II)V
    .locals 0

    iput p3, p0, LR/e;->a:I

    iput-object p1, p0, LR/e;->b:Ljava/lang/Object;

    iput p2, p0, LR/e;->c:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, LR/e;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    iget v0, p0, LR/e;->c:I

    iget-object p0, p0, LR/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, v0, p0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lz0/F;

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LR/e;->c:I

    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, LR/e;->b:Ljava/lang/Object;

    check-cast p0, Lz0/G;

    invoke-static {p1, p0, v0, v0}, Lz0/F;->c(Lz0/F;Lz0/G;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lz0/F;

    const-string p1, "$this$layout"

    invoke-static {v0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, LR/e;->c:I

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iget-object p0, p0, LR/e;->b:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lz0/G;

    iget p0, v1, Lz0/G;->a:I

    invoke-virtual {v1}, Lz0/G;->s()I

    move-result v2

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    sub-int v2, p1, p0

    iget p0, v1, Lz0/G;->b:I

    invoke-virtual {v1}, Lz0/G;->r()I

    move-result v3

    sub-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x2

    sub-int v3, p1, p0

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Lz0/F;->f(Lz0/F;Lz0/G;IILm9/g;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
