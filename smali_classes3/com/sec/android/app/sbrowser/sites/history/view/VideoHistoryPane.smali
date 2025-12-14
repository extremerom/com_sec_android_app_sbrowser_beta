.class public Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane$Delegate;

.field private mMainLayout:Landroid/view/View;

.field private mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane$Delegate;

    const p3, 0x7f0b05e7

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mTitleView:Landroid/view/View;

    const p3, 0x7f0b05e1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    new-instance p3, Lcom/sec/android/app/sbrowser/sites/history/view/d;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mTitleView:Landroid/view/View;

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->getVideoHistoryLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->shouldShowVideoHistory(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private getVideoHistoryLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane$Delegate;->launchVideoHistory()V

    return-void
.end method


# virtual methods
.method public getPaneHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->getVideoHistoryLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mMainLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->mTitleView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldShowVideoHistory(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->shouldShowVideoHistory(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method
