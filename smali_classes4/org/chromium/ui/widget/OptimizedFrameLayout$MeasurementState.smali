.class Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/OptimizedFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasurementState"
.end annotation


# instance fields
.field final mHeightMeasureSpec:I

.field final mView:Landroid/view/View;

.field final mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;->mView:Landroid/view/View;

    iput p2, p0, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;->mWidthMeasureSpec:I

    iput p3, p0, Lorg/chromium/ui/widget/OptimizedFrameLayout$MeasurementState;->mHeightMeasureSpec:I

    return-void
.end method
