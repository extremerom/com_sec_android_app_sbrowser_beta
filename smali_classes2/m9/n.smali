.class public final synthetic Lm9/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm9/q;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILm9/q;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lm9/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm9/n;->c:I

    iput-object p2, p0, Lm9/n;->b:Lm9/q;

    return-void
.end method

.method public synthetic constructor <init>(Lm9/q;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm9/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/n;->b:Lm9/q;

    iput p2, p0, Lm9/n;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lm9/n;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lm9/n;->b:Lm9/q;

    iget-object v0, p1, Lm9/q;->n:[F

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lm9/q;->l([FI)[F

    move-result-object v0

    iput-object v0, p1, Lm9/q;->n:[F

    iget-object v0, p1, Lm9/q;->o:[F

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lm9/q;->l([FI)[F

    move-result-object v0

    iput-object v0, p1, Lm9/q;->o:[F

    iget-object v0, p1, Lm9/q;->p:[F

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lm9/q;->l([FI)[F

    move-result-object v0

    iput-object v0, p1, Lm9/q;->p:[F

    iget-object v0, p1, Lm9/q;->q:[F

    invoke-static {v0, v1}, Lm9/q;->l([FI)[F

    move-result-object v0

    iput-object v0, p1, Lm9/q;->q:[F

    iget-object p1, p1, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_0

    const-string v0, "uSpotCount"

    iget p0, p0, Lm9/n;->c:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lm9/n;->b:Lm9/q;

    iget p0, p0, Lm9/n;->c:I

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    iget-object v0, p1, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    mul-float v2, v1, p1

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    mul-float v3, v1, p1

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    mul-float v4, v1, p1

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v5

    const-string v1, "uBaseColor"

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
