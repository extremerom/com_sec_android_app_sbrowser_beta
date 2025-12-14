.class public final synthetic Lk9/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj9/h;


# direct methods
.method public synthetic constructor <init>(Lj9/h;I)V
    .locals 0

    iput p2, p0, Lk9/t;->a:I

    iput-object p1, p0, Lk9/t;->b:Lj9/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lk9/t;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk9/t;->b:Lj9/h;

    check-cast p0, Ll9/j;

    iget-object p0, p0, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz p0, :cond_0

    const-string p1, "uLightSaturation"

    const v0, 0x3f933333    # 1.15f

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lk9/t;->b:Lj9/h;

    check-cast p0, Lk9/z;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_1

    const-string v0, "uRoundRectShape"

    iget-boolean p0, p0, Lk9/z;->l:Z

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lk9/t;->b:Lj9/h;

    check-cast p0, Lk9/z;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p0, :cond_2

    const-string p1, "uDitherVariation"

    const v0, 0x3d8f5c29    # 0.07f

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
