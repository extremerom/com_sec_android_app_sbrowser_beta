.class public final LJ6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ6/b;->a:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, LJ6/b;->a:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->a:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
