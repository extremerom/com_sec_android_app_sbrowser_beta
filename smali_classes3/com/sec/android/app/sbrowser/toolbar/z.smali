.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

.field public final synthetic b:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;Landroidx/appcompat/widget/SeslProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/z;->a:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/z;->b:Landroidx/appcompat/widget/SeslProgressBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/z;->b:Landroidx/appcompat/widget/SeslProgressBar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/z;->a:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->a(Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;Landroidx/appcompat/widget/SeslProgressBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
