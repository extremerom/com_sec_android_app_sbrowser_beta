.class Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->k(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const v1, 0x7f0b08ab

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->k(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->l(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    const/4 p0, 0x5

    if-le v2, p0, :cond_1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
