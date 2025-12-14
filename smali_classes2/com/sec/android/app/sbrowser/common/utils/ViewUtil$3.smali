.class Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$3;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxIntroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$3;->val$checkBox:Landroid/widget/CheckBox;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
