.class public final Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ/\u0010\u0011\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J/\u0010\u0016\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0012J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "com/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "",
        "groupName",
        "Ldb/r;",
        "updateErrorText",
        "(Ljava/lang/String;)V",
        "",
        "length",
        "",
        "isAvailableLength",
        "(I)Z",
        "",
        "charSequence",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "i",
        "i1",
        "i2",
        "onTextChanged",
        "Landroid/text/Editable;",
        "editable",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "isBackPressed",
        "Z",
        "isTyping",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isBackPressed:Z

.field private isTyping:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isAvailableLength(I)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    const/16 v1, 0x800

    if-ge p1, v1, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method private final updateErrorText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->access$getEditGroupNameView$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060100

    invoke-static {v2, v1}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isDuplicatedGroupName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->access$getTitleErrorText$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->access$getEditGroupNameView$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060493

    invoke-static {v0, p0}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->access$getTitleErrorText$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140677

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->isBackPressed:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->isAvailableLength(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->isTyping:Z

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->access$getTitleErrorText$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "editable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->access$updatePositiveButton(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->updateErrorText(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const-string p2, "charSequence"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ge p4, p3, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->isBackPressed:Z

    if-lt p4, p3, :cond_1

    move p1, p2

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;->isTyping:Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "charSequence"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
