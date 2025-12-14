.class public final synthetic Ll9/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ll9/j;


# direct methods
.method public synthetic constructor <init>(ILl9/j;I)V
    .locals 0

    iput p3, p0, Ll9/g;->a:I

    iput p1, p0, Ll9/g;->b:I

    iput-object p2, p0, Ll9/g;->c:Ll9/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Ll9/g;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Ll9/g;->c:Ll9/j;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Ll9/g;->b:I

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    const-string v0, "valueOf(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v6

    const-string v2, "uLightColor"

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Ll9/g;->c:Ll9/j;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Ll9/g;->b:I

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    const-string v0, "valueOf(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v6

    const-string v2, "uDomainColor"

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
