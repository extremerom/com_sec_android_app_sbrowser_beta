.class Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$2;->val$terrace:Lcom/sec/terrace/Terrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$2;->val$terrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, v0}, Lcom/sec/terrace/Terrace;->applyVirtualCard(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
