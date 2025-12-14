.class public Lorg/chromium/ui/listmenu/ListMenuButton;
.super Lorg/chromium/ui/widget/ChromeImageButton;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mIsAttachedToWindow:Z

.field private final mListMenuHost:Lorg/chromium/ui/listmenu/ListMenuHost;


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/listmenu/ListMenuButton;->mListMenuHost:Lorg/chromium/ui/listmenu/ListMenuHost;

    invoke-virtual {p0}, Lorg/chromium/ui/listmenu/ListMenuHost;->dismiss()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lt/z;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/listmenu/ListMenuButton;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/ui/listmenu/ListMenuButton;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/listmenu/ListMenuButton;->mIsAttachedToWindow:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lorg/chromium/ui/widget/ChromeImageButton;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/chromium/ui/listmenu/ListMenuButton;->setContentDescriptionContext(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentDescriptionContext(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/chromium/ui/R$string;->accessibility_toolbar_btn_menu:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/ui/R$string;->accessibility_list_menu_button:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDelegate(Lorg/chromium/ui/listmenu/ListMenuDelegate;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/chromium/ui/listmenu/ListMenuButton;->setDelegate(Lorg/chromium/ui/listmenu/ListMenuDelegate;Z)V

    return-void
.end method

.method public setDelegate(Lorg/chromium/ui/listmenu/ListMenuDelegate;Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/listmenu/ListMenuButton;->mListMenuHost:Lorg/chromium/ui/listmenu/ListMenuHost;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/listmenu/ListMenuHost;->setDelegate(Lorg/chromium/ui/listmenu/ListMenuDelegate;Z)V

    return-void
.end method

.method public setMenuMaxWidth(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/listmenu/ListMenuButton;->mListMenuHost:Lorg/chromium/ui/listmenu/ListMenuHost;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/listmenu/ListMenuHost;->setMenuMaxWidth(I)V

    return-void
.end method
