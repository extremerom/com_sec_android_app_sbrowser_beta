.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->addDetailsLink(Landroid/widget/CheckBox;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$focusDownView:Landroid/view/View;

.field final synthetic val$focusUpView:Landroid/view/View;

.field final synthetic val$movementMethod:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;Landroid/widget/CheckBox;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$movementMethod:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$focusUpView:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$focusDownView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$movementMethod:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_5

    const/16 p2, 0x14

    if-eq p1, p2, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$focusDownView:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    :cond_4
    return v0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;->val$focusUpView:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    :cond_6
    return v0
.end method
