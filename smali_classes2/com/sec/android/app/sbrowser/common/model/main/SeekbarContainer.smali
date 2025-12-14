.class public Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field mAccessibilityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;

.field private mScrollAccDelegate:Lf1/b;

.field mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer$1;-><init>(Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->mScrollAccDelegate:Lf1/b;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->mScrollAccDelegate:Lf1/b;

    invoke-static {p1, p0}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->mScrollAccDelegate:Lf1/b;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    return-void
.end method

.method public setSeekBar(Landroidx/appcompat/widget/SeslSeekBar;Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->mAccessibilityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method
