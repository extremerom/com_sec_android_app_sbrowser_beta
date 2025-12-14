.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->j(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const v1, 0x7f0b02ee

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->p(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lt/k0;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->n(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->m(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p2

    const v5, 0x3f19999a    # 0.6f

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    const/4 p1, 0x5

    if-le v3, p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->j(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->k(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->j(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f07019e

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->o(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->o(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->j(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->o(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    :cond_2
    sub-int/2addr p1, p2

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->p(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
