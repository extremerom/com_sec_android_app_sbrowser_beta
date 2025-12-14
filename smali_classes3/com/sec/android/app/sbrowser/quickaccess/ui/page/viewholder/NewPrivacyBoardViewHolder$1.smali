.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;->updateBlurBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->updateBlurBackground()V

    return-void
.end method
