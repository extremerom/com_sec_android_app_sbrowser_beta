.class Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mIsBackPressed:Z

.field mIsTyping:Z

.field mTextLength:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->n(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->o(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1404a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->t(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->q(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->s(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->o(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f14046c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->t(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->q(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_1
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->m(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->m(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->m(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->m(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->q(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/Button;

    move-result-object v4

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->q(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->p(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v1, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->l(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f14046b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->p(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->t(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->o(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->t(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->o(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->q(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->o(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mTextLength:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->q(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mIsBackPressed:Z

    const/16 v1, 0x800

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mTextLength:I

    if-lt v0, v2, :cond_9

    if-ge v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mIsTyping:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->o(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->t(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V

    :cond_9
    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mTextLength:I

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->o(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->l(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140677

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->t(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->q(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    :goto_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->r(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Lcom/google/android/material/textfield/TextInputLayout;

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

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mIsBackPressed:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mIsTyping:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mIsBackPressed:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;->mIsTyping:Z

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
