.class public final synthetic Lm9/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lm9/q;

.field public final synthetic b:I

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lm9/q;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/m;->a:Lm9/q;

    iput p2, p0, Lm9/m;->b:I

    iput p3, p0, Lm9/m;->c:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/RuntimeShader;

    iget-object p1, p0, Lm9/m;->a:Lm9/q;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lm9/q;->q:[F

    iget v1, p0, Lm9/m;->b:I

    iget p0, p0, Lm9/m;->c:F

    aput p0, v0, v1

    iget-object p0, p1, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    if-eqz p0, :cond_0

    const-string p1, "uSpotScales"

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    :cond_0
    return-void
.end method
