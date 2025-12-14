.class public final synthetic Lc6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic b:Landroid/content/res/ColorStateList;

.field public final synthetic c:Landroid/content/res/ColorStateList;

.field public final synthetic d:LF6/g;

.field public final synthetic e:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LF6/g;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/a;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lc6/a;->b:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lc6/a;->c:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Lc6/a;->d:LF6/g;

    iput-object p5, p0, Lc6/a;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v3, p0, Lc6/a;->d:LF6/g;

    iget-object v1, p0, Lc6/a;->b:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lc6/a;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lc6/a;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v4, p0, Lc6/a;->e:Ljava/lang/Integer;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout;->b(Lcom/google/android/material/appbar/AppBarLayout;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LF6/g;Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
