.class public Lorg/chromium/ui/DropdownPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/ui/DropdownPopupWindowImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;)V

    iput-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    return-void
.end method


# virtual methods
.method public disableHideOnOutsideTap()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0}, Lorg/chromium/ui/DropdownPopupWindowInterface;->disableHideOnOutsideTap()V

    return-void
.end method

.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0}, Lorg/chromium/ui/DropdownPopupWindowInterface;->dismiss()V

    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0}, Lorg/chromium/ui/DropdownPopupWindowInterface;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0}, Lorg/chromium/ui/DropdownPopupWindowInterface;->isShowing()Z

    move-result p0

    return p0
.end method

.method public postShow()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0}, Lorg/chromium/ui/DropdownPopupWindowInterface;->postShow()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0, p1}, Lorg/chromium/ui/DropdownPopupWindowInterface;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0, p1}, Lorg/chromium/ui/DropdownPopupWindowInterface;->setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInitialSelection(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0, p1}, Lorg/chromium/ui/DropdownPopupWindowInterface;->setInitialSelection(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0, p1}, Lorg/chromium/ui/DropdownPopupWindowInterface;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0, p1}, Lorg/chromium/ui/DropdownPopupWindowInterface;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0, p1}, Lorg/chromium/ui/DropdownPopupWindowInterface;->setRtl(Z)V

    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mPopup:Lorg/chromium/ui/DropdownPopupWindowInterface;

    invoke-interface {p0}, Lorg/chromium/ui/DropdownPopupWindowInterface;->show()V

    return-void
.end method
