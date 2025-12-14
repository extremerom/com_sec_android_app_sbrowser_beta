.class public final synthetic Lz3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz3/t;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lz3/t;FI)V
    .locals 0

    iput p3, p0, Lz3/n;->a:I

    iput-object p1, p0, Lz3/n;->b:Lz3/t;

    iput p2, p0, Lz3/n;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lz3/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz3/n;->b:Lz3/t;

    iget p0, p0, Lz3/n;->c:F

    invoke-virtual {v0, p0}, Lz3/t;->t(F)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lz3/n;->b:Lz3/t;

    iget-object v1, v0, Lz3/t;->a:Lz3/g;

    iget p0, p0, Lz3/n;->c:F

    if-nez v1, :cond_0

    iget-object v1, v0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v2, Lz3/n;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lz3/n;-><init>(Lz3/t;FI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v2, v1, Lz3/g;->k:F

    iget v1, v1, Lz3/g;->l:F

    invoke-static {v2, v1, p0}, LL3/e;->d(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lz3/t;->r(I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lz3/n;->b:Lz3/t;

    iget-object v1, v0, Lz3/t;->a:Lz3/g;

    iget p0, p0, Lz3/n;->c:F

    if-nez v1, :cond_1

    iget-object v1, v0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v2, Lz3/n;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lz3/n;-><init>(Lz3/t;FI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget v2, v1, Lz3/g;->k:F

    iget v1, v1, Lz3/g;->l:F

    invoke-static {v2, v1, p0}, LL3/e;->d(FFF)F

    move-result p0

    iget-object v0, v0, Lz3/t;->b:LL3/c;

    iget v1, v0, LL3/c;->j:F

    invoke-virtual {v0, v1, p0}, LL3/c;->i(FF)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
