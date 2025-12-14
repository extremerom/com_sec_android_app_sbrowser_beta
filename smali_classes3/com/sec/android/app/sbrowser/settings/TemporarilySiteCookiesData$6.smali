.class Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->r(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const v1, 0x7f0b02ee

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->F(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/view/View;

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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->r(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->t(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr p1, v4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->C(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->x(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/widget/TextView;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p2

    const v6, 0x3f19999a    # 0.6f

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v4

    if-gez p2, :cond_2

    const/4 p2, 0x5

    if-le v3, p2, :cond_2

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->F(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
