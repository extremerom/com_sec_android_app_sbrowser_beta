.class Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->showVirtualCardReviewTips(Lcom/sec/terrace/Terrace;FFFLandroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

.field final synthetic val$terrace:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;Lcom/sec/terrace/Terrace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;->val$terrace:Lcom/sec/terrace/Terrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->b(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->b(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->a(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;->val$terrace:Lcom/sec/terrace/Terrace;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->applyVirtualCard(Z)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->a(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->d(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;I)V

    return-void
.end method
