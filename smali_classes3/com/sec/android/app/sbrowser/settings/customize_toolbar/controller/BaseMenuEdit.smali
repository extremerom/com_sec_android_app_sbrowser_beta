.class public abstract Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;


# instance fields
.field private mAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mDragItemPosition:I

.field private mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

.field private mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    return-object p0
.end method


# virtual methods
.method public addMenuItem(ILandroid/view/MenuItem;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->canAddMenuItem(Landroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->addItem(ILandroid/view/MenuItem;Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->setSelectedItem(I)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    return-void
.end method

.method public addMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->addItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addMenuItemForCustomAction(ILandroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->canAddMenuItem(Landroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->addMenuItem(ILandroid/view/MenuItem;)V

    return-object v1
.end method

.method public abstract canAddMenuItem(Landroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
.end method

.method public abstract canRemoveMenuItem()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
.end method

.method public directDeleteItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->directDeleteItem(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;I)V

    return-void
.end method

.method public finishedCustomAction()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->onFinishedEdit()V

    return-void
.end method

.method public getReferenceView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedMenuItem()Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    return p0
.end method

.method public abstract insertionPosition(II)I
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public isDragIn(II)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->isAnimating()Z

    const/4 p0, 0x0

    return p0
.end method

.method public moveMenuItem(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->moveItem(IILandroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->setSelectedItem(I)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    return-void
.end method

.method public moveMenuItemForCustomAction(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->moveMenuItem(I)V

    return-void
.end method

.method public onDrag(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->getNextState(II)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->canRemoveMenuItem()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setDragResult(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->getSelectedMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setEditState(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;Landroid/view/MenuItem;II)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->removeMenuItem()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->pointToPosition(II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->moveMenuItem(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDragIn(Landroid/view/MenuItem;II)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->canAddMenuItem(Landroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->insertionPosition(II)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->INVALID_POSITION:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->addMenuItem(ILandroid/view/MenuItem;)V

    return-object v1
.end method

.method public onFinishedEdit()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->setSelectedItem(I)V

    return-void
.end method

.method public onStartEdit(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    return-void
.end method

.method public abstract pointToPosition(II)I
.end method

.method public removeMenuItem()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->removeItem(ILandroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->setSelectedItem(I)V

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mDragItemPosition:I

    return-void
.end method

.method public removeMenuItemForCustomAction()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->removeMenuItem()V

    return-void
.end method

.method public startCustomAction(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->onStartEdit(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditMenu:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->setSelectedItem(I)V

    return-void
.end method

.method public startEdit(Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->startEdit(Landroid/view/View;Landroid/graphics/Point;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public startEdit(Landroid/view/View;Landroid/view/MenuItem;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->mEditController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->startEdit(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method
