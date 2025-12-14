.class public abstract Lcom/sec/android/app/sbrowser/databinding/SplitViewContainerBinding;
.super Landroidx/databinding/k;
.source "SourceFile"


# instance fields
.field public final splitViewContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final splitViewWebpageBlurView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final splitViewWithBlurLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/k;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/SplitViewContainerBinding;->splitViewContainer:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/SplitViewContainerBinding;->splitViewWebpageBlurView:Landroid/view/View;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/SplitViewContainerBinding;->splitViewWithBlurLayout:Landroid/widget/RelativeLayout;

    return-void
.end method
