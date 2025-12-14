.class Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const v1, 0x7f0b02ee

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->H(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getCoordinatorLayout(Landroid/app/Activity;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lt/k0;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int v4, p1, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->v(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->E(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->y(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p2

    const v6, 0x3f19999a    # 0.6f

    sub-float/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_3

    const/4 p2, 0x5

    if-le v4, p2, :cond_3

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->H(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
