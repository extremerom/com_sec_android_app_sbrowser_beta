.class Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mIsBackPressed:Z

.field mIsTyping:Z

.field mTextLength:I

.field final synthetic this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->m(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkFolderItemId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->q(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/Button;

    move-result-object v3

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1403e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {v2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->mTextLength:I

    const/16 v0, 0x800

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->q(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140677

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->q(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->mIsBackPressed:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->mTextLength:I

    if-lt p1, v2, :cond_5

    if-ge p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->mIsTyping:Z

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {v1, p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ge p4, p3, :cond_0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->mIsBackPressed:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->mIsTyping:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->mIsBackPressed:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;->mIsTyping:Z

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
