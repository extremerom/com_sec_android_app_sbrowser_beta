.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->setUpDownKeyListener(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

.field final synthetic val$focusDownView:Landroid/view/View;

.field final synthetic val$focusUpView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$6;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$6;->val$focusUpView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$6;->val$focusDownView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const/16 p2, 0x13

    const/4 p3, 0x1

    if-eq p1, p2, :cond_3

    const/16 p2, 0x14

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$6;->val$focusDownView:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    :cond_2
    return p3

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$6;->val$focusUpView:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    :cond_4
    return p3
.end method
