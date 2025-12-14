.class Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mIsBackPressed:Z

.field mIsTyping:Z

.field mTextLength:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mTextLength:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkFolderItemId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->n(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1403e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {v2, v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mTextLength:I

    const/16 v3, 0x800

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->k(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v2, v4, v0, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mIsBackPressed:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mTextLength:I

    if-lt v0, v2, :cond_5

    if-ge v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mIsTyping:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->m(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ge p4, p3, :cond_0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mIsBackPressed:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mIsTyping:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mIsBackPressed:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;->mIsTyping:Z

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
