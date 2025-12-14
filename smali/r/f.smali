.class public final Lr/f;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    iput-object p1, p0, Lr/f;->a:Landroid/view/View;

    iput p2, p0, Lr/f;->b:I

    iput p3, p0, Lr/f;->c:I

    return-void
.end method


# virtual methods
.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    iget-object p0, p0, Lr/f;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 1

    iget p2, p0, Lr/f;->c:I

    invoke-static {p1, p2}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p2

    iget v0, p0, Lr/f;->b:I

    invoke-static {p1, v0}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p2

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {p2, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p2

    iget-object p0, p0, Lr/f;->a:Landroid/view/View;

    iget v0, p2, Landroid/graphics/Insets;->top:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-object p1
.end method
