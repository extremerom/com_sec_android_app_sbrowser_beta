.class public final Lk6/a;
.super LZ2/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/checkbox/b;


# direct methods
.method public constructor <init>(Lcom/google/android/material/checkbox/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6/a;->a:Lcom/google/android/material/checkbox/b;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lk6/a;->a:Lcom/google/android/material/checkbox/b;

    iget-object p0, p0, Lcom/google/android/material/checkbox/b;->k:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, LZ2/c;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk6/a;->a:Lcom/google/android/material/checkbox/b;

    iget-object v0, p0, Lcom/google/android/material/checkbox/b;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/checkbox/b;->o:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method
