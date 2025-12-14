.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getPrivacyDashboardMessage()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result p1

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->onClickTurnOn()V

    return-void
.end method
