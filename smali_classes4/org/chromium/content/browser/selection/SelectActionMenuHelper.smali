.class public Lorg/chromium/content/browser/selection/SelectActionMenuHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;,
        Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;,
        Lorg/chromium/content/browser/selection/SelectActionMenuHelper$GroupItemOrder;,
        Lorg/chromium/content/browser/selection/SelectActionMenuHelper$ItemKeyShortcuts;,
        Lorg/chromium/content/browser/selection/SelectActionMenuHelper$DefaultItemOrder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static synthetic a(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->lambda$getActionClickListener$2(Landroid/app/RemoteAction;Landroid/view/View;)V

    return-void
.end method

.method private static addAdditionalTextProcessingItems(Lorg/chromium/content_public/browser/SelectionMenuGroup;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;->getAdditionalTextProcessingItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/SelectionMenuGroup;->addItems(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lorg/chromium/content_public/browser/SelectionClient$Result;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->lambda$getPrimaryAssistItems$0(Landroid/content/Context;Lorg/chromium/content_public/browser/SelectionClient$Result;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->lambda$getTextProcessingItems$1(Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method private static copy(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 2

    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    const v1, 0x1040001

    invoke-direct {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(I)V

    sget v1, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const v1, 0x1010312

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIconAttr(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setAlphabeticShortcut(Ljava/lang/Character;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsEnabled(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsIconTintable(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static createProcessTextIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Z)Landroid/content/Intent;
    .locals 2

    invoke-static {}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static cut(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 3

    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    const v1, 0x1040003

    invoke-direct {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(I)V

    sget v1, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const v1, 0x1010311

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIconAttr(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setAlphabeticShortcut(Ljava/lang/Character;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsEnabled(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsIconTintable(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static getActionClickListener(Landroid/app/RemoteAction;)Landroid/view/View$OnClickListener;
    .locals 2

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultItems(Landroid/content/Context;Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;ZZLjava/lang/String;)Lorg/chromium/content_public/browser/SelectionMenuGroup;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuGroup;

    sget v1, Lorg/chromium/content/R$id;->select_action_menu_default_items:I

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/content_public/browser/SelectionMenuGroup;-><init>(II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;->canCut()Z

    move-result v2

    invoke-static {v2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->cut(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;->canCopy()Z

    move-result v2

    invoke-static {v2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->copy(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;->canPaste()Z

    move-result v2

    invoke-static {v2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->paste(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;->canShare()Z

    move-result v2

    invoke-static {p0, v2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->share(Landroid/content/Context;Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;->canSelectAll()Z

    move-result v2

    invoke-static {v2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->selectAll(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;->canWebSearch()Z

    move-result v2

    invoke-static {p0, v2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->webSearch(Landroid/content/Context;Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;->canPasteAsPlainText()Z

    move-result p1

    invoke-static {p0, p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->pasteAsPlainText(Landroid/content/Context;Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-interface {p2, v1, p3, p4, p5}, Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;->modifyDefaultMenuItems(Ljava/util/List;ZZLjava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->build()Lorg/chromium/content_public/browser/SelectionMenuItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/SelectionMenuGroup;->addItem(Lorg/chromium/content_public/browser/SelectionMenuItem;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getMenuItems(Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;Landroid/content/Context;Lorg/chromium/content_public/browser/SelectionClient$Result;ZZLjava/lang/String;Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)Ljava/util/SortedSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;",
            "Landroid/content/Context;",
            "Lorg/chromium/content_public/browser/SelectionClient$Result;",
            "ZZ",
            "Ljava/lang/String;",
            "Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;",
            "Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;",
            ")",
            "Ljava/util/SortedSet<",
            "Lorg/chromium/content_public/browser/SelectionMenuGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p7

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->getDefaultItems(Landroid/content/Context;Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;ZZLjava/lang/String;)Lorg/chromium/content_public/browser/SelectionMenuGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p5, p2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->getPrimaryAssistItems(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/content_public/browser/SelectionClient$Result;)Lorg/chromium/content_public/browser/SelectionMenuGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p7, p2, p5}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->getSecondaryAssistItems(Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;Lorg/chromium/content_public/browser/SelectionClient$Result;Ljava/lang/String;)Lorg/chromium/content_public/browser/SelectionMenuGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1, p3, p4, p6, p7}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->getTextProcessingItems(Landroid/content/Context;ZZLorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)Lorg/chromium/content_public/browser/SelectionMenuGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getPrimaryActionIconForClassificationResult(Lorg/chromium/content_public/browser/SelectionClient$Result;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content_public/browser/SelectionClient$Result;->additionalIcons:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content_public/browser/SelectionClient$Result;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method private static getPrimaryAssistItems(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/content_public/browser/SelectionClient$Result;)Lorg/chromium/content_public/browser/SelectionMenuGroup;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/chromium/content_public/browser/SelectionClient$Result;->hasNamedAction()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/chromium/content_public/browser/SelectionMenuGroup;

    sget v1, Lorg/chromium/content/R$id;->select_action_menu_assist_items:I

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lorg/chromium/content_public/browser/SelectionMenuGroup;-><init>(II)V

    iget-object v1, p2, Lorg/chromium/content_public/browser/SelectionClient$Result;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p2, Lorg/chromium/content_public/browser/SelectionClient$Result;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    new-instance v0, LFa/b;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0, p2}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    new-instance p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    iget-object v1, p2, Lorg/chromium/content_public/browser/SelectionClient$Result;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(Ljava/lang/CharSequence;)V

    const v1, 0x1020041

    invoke-virtual {p0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-static {p2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->getPrimaryActionIconForClassificationResult(Lorg/chromium/content_public/browser/SelectionClient$Result;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setClickListener(Landroid/view/View$OnClickListener;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->build()Lorg/chromium/content_public/browser/SelectionMenuItem;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/chromium/content_public/browser/SelectionMenuGroup;->addItem(Lorg/chromium/content_public/browser/SelectionMenuItem;)V

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static getSecondaryAssistItems(Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;Lorg/chromium/content_public/browser/SelectionClient$Result;Ljava/lang/String;)Lorg/chromium/content_public/browser/SelectionMenuGroup;
    .locals 9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x1020041

    :goto_0
    new-instance v2, Lorg/chromium/content_public/browser/SelectionMenuGroup;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lorg/chromium/content_public/browser/SelectionMenuGroup;-><init>(II)V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;->getAdditionalNonSelectionItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v2, p0}, Lorg/chromium/content_public/browser/SelectionMenuGroup;->addItems(Ljava/util/Collection;)V

    return-object v2

    :cond_1
    const/4 p0, 0x0

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    iget-object p2, p1, Lorg/chromium/content_public/browser/SelectionClient$Result;->textClassification:Landroid/view/textclassifier/TextClassification;

    if-nez p2, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_4

    return-object p0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_5

    return-object p0

    :cond_5
    iget-object p1, p1, Lorg/chromium/content_public/browser/SelectionClient$Result;->additionalIcons:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_8

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;

    invoke-static {v5}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->getActionClickListener(Landroid/app/RemoteAction;)Landroid/view/View$OnClickListener;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    new-instance v7, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v7

    if-nez p1, :cond_7

    move-object v8, p0

    goto :goto_2

    :cond_7
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v7, v8}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setContentDescription(Ljava/lang/CharSequence;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setClickListener(Landroid/view/View$OnClickListener;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->build()Lorg/chromium/content_public/browser/SelectionMenuItem;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/chromium/content_public/browser/SelectionMenuGroup;->addItem(Lorg/chromium/content_public/browser/SelectionMenuItem;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    return-object v2
.end method

.method public static getTextProcessingItems(Landroid/content/Context;ZZLorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)Lorg/chromium/content_public/browser/SelectionMenuGroup;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuGroup;

    sget v1, Lorg/chromium/content/R$id;->select_action_menu_text_processing_items:I

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/chromium/content_public/browser/SelectionMenuGroup;-><init>(II)V

    if-nez p1, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/chromium/base/PackageManagerUtils;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p4, :cond_1

    invoke-interface {p4, p1}, Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;->filterTextProcessingActivities(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, p4}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->addAdditionalTextProcessingItems(Lorg/chromium/content_public/browser/SelectionMenuGroup;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_8

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v4, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v3, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskWrites()Lorg/chromium/base/StrictModeContext;

    move-result-object v5

    :try_start_0
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowUnbufferedIo()Lorg/chromium/base/StrictModeContext;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, p0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v6}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_5
    invoke-static {v3, p2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Z)Landroid/content/Intent;

    move-result-object v3

    new-instance v5, LFa/b;

    const/16 v6, 0x19

    invoke-direct {v5, v6, p3, v3}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    invoke-direct {v6, v4}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setClickListener(Landroid/view/View$OnClickListener;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIntent(Landroid/content/Intent;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->build()Lorg/chromium/content_public/browser/SelectionMenuItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/chromium/content_public/browser/SelectionMenuGroup;->addItem(Lorg/chromium/content_public/browser/SelectionMenuItem;)V

    goto :goto_5

    :catchall_1
    move-exception p0

    if-eqz v6, :cond_6

    :try_start_3
    invoke-virtual {v6}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-eqz v5, :cond_7

    :try_start_5
    invoke-virtual {v5}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw p0

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    invoke-static {v0, p4}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->addAdditionalTextProcessingItems(Lorg/chromium/content_public/browser/SelectionMenuGroup;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)V

    return-object v0

    :cond_a
    :goto_6
    invoke-static {v0, p4}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->addAdditionalTextProcessingItems(Lorg/chromium/content_public/browser/SelectionMenuGroup;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)V

    return-object v0
.end method

.method private static synthetic lambda$getActionClickListener$2(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/base/ApiCompatibilityUtils;->setActivityOptionsBackgroundActivityStartAllowAlways(Landroid/app/ActivityOptions;)V

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SelectActionMenu"

    const-string v0, "Error creating OnClickListener from PendingIntent"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$getPrimaryAssistItems$0(Landroid/content/Context;Lorg/chromium/content_public/browser/SelectionClient$Result;Landroid/view/View;)V
    .locals 0

    iget-object p1, p1, Lorg/chromium/content_public/browser/SelectionClient$Result;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$getTextProcessingItems$1(Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private static paste(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 2

    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    const v1, 0x104000b

    invoke-direct {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(I)V

    sget v1, Lorg/chromium/content/R$id;->select_action_menu_paste:I

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const v1, 0x1010313

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIconAttr(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setAlphabeticShortcut(Ljava/lang/Character;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsEnabled(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsIconTintable(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static pasteAsPlainText(Landroid/content/Context;Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 2

    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    const v1, 0x1040019

    invoke-direct {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(I)V

    sget v1, Lorg/chromium/content/R$id;->select_action_menu_paste_as_plain_text:I

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsEnabled(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p1

    if-eqz p0, :cond_0

    sget v0, Lorg/chromium/content/R$drawable;->ic_paste_as_plain_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsIconTintable(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    :cond_0
    return-object p1
.end method

.method public static removeAllAddedGroupsFromMenu(Landroid/view/Menu;)V
    .locals 1

    sget v0, Lorg/chromium/content/R$id;->select_action_menu_default_items:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->removeGroup(I)V

    sget v0, Lorg/chromium/content/R$id;->select_action_menu_assist_items:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->removeGroup(I)V

    sget v0, Lorg/chromium/content/R$id;->select_action_menu_text_processing_items:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->removeGroup(I)V

    const v0, 0x1020041

    invoke-interface {p0, v0}, Landroid/view/Menu;->removeGroup(I)V

    return-void
.end method

.method private static selectAll(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 2

    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    const v1, 0x104000d

    invoke-direct {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(I)V

    sget v1, Lorg/chromium/content/R$id;->select_action_menu_select_all:I

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const v1, 0x101037e

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIconAttr(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setAlphabeticShortcut(Ljava/lang/Character;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsEnabled(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsIconTintable(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static share(Landroid/content/Context;Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    sget v1, Lorg/chromium/content/R$string;->actionbar_share:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(Ljava/lang/CharSequence;)V

    sget p0, Lorg/chromium/content/R$id;->select_action_menu_share:I

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const v0, 0x1010479

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIconAttr(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsEnabled(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsIconTintable(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static webSearch(Landroid/content/Context;Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    new-instance v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    sget v1, Lorg/chromium/content/R$string;->actionbar_web_search:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(Ljava/lang/CharSequence;)V

    sget p0, Lorg/chromium/content/R$id;->select_action_menu_web_search:I

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const v0, 0x101047b

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIconAttr(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsEnabled(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setIsIconTintable(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    return-object p0
.end method
