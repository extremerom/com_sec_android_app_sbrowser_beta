.class public final synthetic Lj9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lj9/h;


# direct methods
.method public synthetic constructor <init>(IILm9/q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj9/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj9/e;->b:I

    iput-object p3, p0, Lj9/e;->d:Lj9/h;

    iput p2, p0, Lj9/e;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lj9/h;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj9/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9/e;->d:Lj9/h;

    iput p2, p0, Lj9/e;->b:I

    iput p3, p0, Lj9/e;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lj9/e;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lj9/e;->d:Lj9/h;

    check-cast p1, Lm9/q;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lj9/e;->b:I

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iget-object v1, p1, Lm9/q;->o:[F

    iget p0, p0, Lj9/e;->c:I

    mul-int/lit8 p0, p0, 0x4

    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v2

    aput v2, v1, p0

    iget-object v1, p1, Lm9/q;->o:[F

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v3

    aput v3, v1, v2

    iget-object v1, p1, Lm9/q;->o:[F

    add-int/lit8 v2, p0, 0x2

    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v3

    aput v3, v1, v2

    iget-object v1, p1, Lm9/q;->o:[F

    add-int/lit8 p0, p0, 0x3

    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v0

    aput v0, v1, p0

    iget-object p0, p1, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lm9/q;->o:[F

    const-string v0, "uSpotColors"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lj9/e;->d:Lj9/h;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lj9/h;->c()Landroid/graphics/RuntimeShader;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p0, Lj9/e;->b:I

    int-to-float v0, v0

    iget p0, p0, Lj9/e;->c:I

    int-to-float p0, p0

    const-string v1, "uSize"

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
