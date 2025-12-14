.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;,
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;
    }
.end annotation


# instance fields
.field private mAvailableMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

.field private mContext:Landroid/content/Context;

.field private mDragInResult:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field private mDragListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;

.field private mDragXOffset:I

.field private mDragYOffset:I

.field private mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

.field private mIsEdited:Z

.field private mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

.field private mSelectedMenuItem:Landroid/view/MenuItem;

.field private mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

.field private mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

.field private mToolsPrimaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

.field private mToolsSecondaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mIsEdited:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getStatusId()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mSelectedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f0b04f1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    const v1, 0x7f140fb9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mSelectedMenuItem:Landroid/view/MenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f140d42

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->STATUS_MAP_CUSTOMIZE_MENU:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mSelectedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f140d3b

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->supportsSystemScanner()Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7f140d3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private isCustomizeToolbarDrag(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomizeToolbar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->isEditEnded()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method private isDragIn(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;II)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->isDragIn(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private moveItemToStartPosition()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->moveMenuItem(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->getSelectedMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->removeMenuItem()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->addMenuItem(ILandroid/view/MenuItem;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->onFinishedEdit()V

    return-void
.end method

.method private onFinishedEdit()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragInResult:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->showErrorToastIfNecessary(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->moveItemToStartPosition()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragInResult:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->onFinishedEdit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-void
.end method

.method private sendMenuItemStatusLog()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mSelectedMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f140d2e

    goto :goto_0

    :cond_1
    const v0, 0x7f140d2c

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    const v2, 0x7f140c2d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mSelectedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getMenuStringFromId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->getDeleteEventId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "552"

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->getAddEventId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->getStatusId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->getStatusDetailId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setStartPosition(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mStartPosition:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;I)V

    return-void
.end method

.method public static showErrorToastIfNecessary(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;)Z
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$1;->$SwitchMap$com$sec$android$app$sbrowser$settings$customize_toolbar$controller$EditState$DragInResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    const v3, 0x1020002

    const/4 v4, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140410

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, v4, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14041e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, v4, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140415

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, v4, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140406

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, v4, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v1
.end method

.method private startDrag(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public directDeleteItem(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mAvailableMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->canRemoveMenuItem()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->showErrorToastIfNecessary(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;)Z

    return-void

    :cond_1
    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->onStartEdit(I)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->getSelectedMenuItem()Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->removeMenuItem()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mAvailableMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->addMenuItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public getNextState(II)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->isDragIn(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->isDragIn(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mAvailableMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->isDragIn(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mAvailableMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsPrimaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->isDragIn(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsPrimaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsSecondaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->isDragIn(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsSecondaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-object p0

    :cond_4
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragInResult:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEditEnded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->isCustomizeToolbarDrag(Landroid/view/DragEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragXOffset:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragYOffset:I

    invoke-interface {p1, p2, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;->onDrag(Landroid/view/DragEvent;II)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragXOffset:I

    add-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragYOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const-string v2, " y: "

    const-string v3, "EditMenuController"

    const/4 v4, 0x1

    if-eq p2, v4, :cond_6

    const/4 v5, 0x2

    if-eq p2, v5, :cond_5

    const/4 v5, 0x3

    if-eq p2, v5, :cond_3

    const/4 v5, 0x4

    if-eq p2, v5, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "Drop: x: "

    invoke-static {p1, v1, p2, v2, v3}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->sendMenuItemStatusLog()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {p2, p1, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->onDrag(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->isAnimating()Z

    move-result p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->onFinishedEdit()V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->unsetSkipExtensionMenuUpdate()V

    :cond_4
    return v4

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->onDrag(II)V

    :goto_0
    return v0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Drag stared: x: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->setSkipExtensionMenuUpdate()V

    return v4
.end method

.method public setDragResult(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragInResult:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-void
.end method

.method public setEditState(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;Landroid/view/MenuItem;II)Z
    .locals 0

    invoke-interface {p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->onDragIn(Landroid/view/MenuItem;II)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragInResult:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    sget-object p3, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    if-ne p2, p3, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHiddenMenuEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mAvailableMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->getInstance()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    move-result-object p0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->setHiddenMenuEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;

    return-void
.end method

.method public setToolbarEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->getInstance()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    move-result-object p0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->setToolbarEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    return-void
.end method

.method public setToolsPrimaryEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsPrimaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-void
.end method

.method public setToolsSecondaryEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsSecondaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->getInstance()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    move-result-object p0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->setMoreMenuEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V

    return-void
.end method

.method public startEdit(Landroid/view/View;Landroid/graphics/Point;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;Landroid/view/MenuItem;I)Z
    .locals 5
    .param p2    # Landroid/graphics/Point;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsSecondaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mAvailableMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsPrimaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStates(Landroid/view/View;)V

    invoke-direct {p0, p3, p5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setStartPosition(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;I)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mSelectedMenuItem:Landroid/view/MenuItem;

    new-instance v0, Landroid/content/ClipData;

    const-string v2, "text/plain"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData$Item;

    const-string v4, "CustomizeToolbar"

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v4, v2, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolbarEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    const/4 v3, 0x0

    if-eq p3, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsPrimaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-ne p3, v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mMoreMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->getReferenceView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mToolsSecondaryEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->getReferenceView()Landroid/view/View;

    move-result-object v3

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mAvailableMenuEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->getReferenceView()Landroid/view/View;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    move-object v3, p1

    :cond_5
    if-nez p2, :cond_6

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditDragShadowBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2, v3, p4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditDragShadowBuilder;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/MenuItem;)V

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragXOffset:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragYOffset:I

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditDragShadowBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p4, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditDragShadowBuilder;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/MenuItem;Landroid/graphics/Point;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p4, v2

    iput p4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragXOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mDragYOffset:I

    move-object p2, v1

    :goto_1
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->startDrag(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mIsEdited:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    invoke-interface {p3, p5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;->onStartEdit(I)V

    :cond_7
    return p1
.end method

.method public startEdit(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;Landroid/view/MenuItem;I)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->startEdit(Landroid/view/View;Landroid/graphics/Point;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public supportsSystemScanner()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportsSystemScanner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.camera.action.SCAN_QR_CODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "request_qr_scan_type"

    const-string v3, "SAMSUNG_INTERNET"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "request_result"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "EditMenuController"

    const-string v0, "No system QR support"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v3
.end method

.method public unsetSkipExtensionMenuUpdate()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->unsetSkipExtensionMenuUpdate()V

    return-void
.end method
