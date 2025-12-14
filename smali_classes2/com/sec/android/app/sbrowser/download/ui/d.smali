.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

.field public final synthetic b:Lcom/google/android/material/appbar/AppBarLayout$Behavior;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Lcom/google/android/material/appbar/AppBarLayout$Behavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/d;->a:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/d;->b:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/d;->a:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/d;->b:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->c(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V

    return-void
.end method
