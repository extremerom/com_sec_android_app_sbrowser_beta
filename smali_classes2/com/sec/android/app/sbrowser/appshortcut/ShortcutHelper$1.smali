.class Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->addShortcutWithRenameDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mHasReachedMaxLengthLimit:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialogText:Landroid/widget/TextView;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$errorText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$editText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$dialogText:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$errorText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->mHasReachedMaxLengthLimit:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->f(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;)Lm/l;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x800

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->mHasReachedMaxLengthLimit:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->mHasReachedMaxLengthLimit:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$context:Landroid/content/Context;

    const v0, 0x7f060021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$dialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$errorText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->mHasReachedMaxLengthLimit:Z

    if-eqz p1, :cond_4

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->mHasReachedMaxLengthLimit:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$context:Landroid/content/Context;

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$dialogText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$context:Landroid/content/Context;

    const v1, 0x7f06022d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->val$errorText:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->f(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;)Lm/l;

    move-result-object p0

    invoke-virtual {p0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
