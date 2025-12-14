.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"


# instance fields
.field private mHorizontalSpace:I

.field private mVerticalSpace:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;->mVerticalSpace:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;->mHorizontalSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 0

    iget p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;->mHorizontalSpace:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;->mVerticalSpace:I

    invoke-virtual {p1, p2, p0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
