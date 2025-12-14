.class public final synthetic Ln9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln9/i;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Ln9/i;FI)V
    .locals 0

    iput p3, p0, Ln9/e;->a:I

    iput-object p1, p0, Ln9/e;->b:Ln9/i;

    iput p2, p0, Ln9/e;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ln9/e;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Ln9/e;->b:Ln9/i;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_0

    const-string v0, "uTransAlpha"

    iget p0, p0, Ln9/e;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Ln9/e;->b:Ln9/i;

    iget-object p1, p1, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_1

    const-string v0, "uTintSaturation"

    iget p0, p0, Ln9/e;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Ln9/e;->b:Ln9/i;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_2

    const-string v0, "uProgress"

    iget p0, p0, Ln9/e;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_2
    return-void

    :pswitch_2
    iget-object p1, p0, Ln9/e;->b:Ln9/i;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_3

    const-string v0, "uTintIntensity"

    iget p0, p0, Ln9/e;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_3
    return-void

    :pswitch_3
    iget-object p1, p0, Ln9/e;->b:Ln9/i;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_4

    const-string v0, "uTransScale"

    iget p0, p0, Ln9/e;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_4
    return-void

    :pswitch_4
    iget-object p1, p0, Ln9/e;->b:Ln9/i;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_5

    const-string v0, "uStretch"

    iget p0, p0, Ln9/e;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
