.class public Lorg/chromium/content/browser/input/SelectPopupDropdown;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/SelectPopup$Ui;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

.field private final mSelectionChangedCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "[I>;"
        }
    .end annotation
.end field

.field private mSelectionNotified:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/base/Callback;Landroid/view/View;Ljava/util/List;[IZLorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/base/Callback<",
            "[I>;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/input/SelectPopupItem;",
            ">;[IZ",
            "Lorg/chromium/content_public/browser/WebContents;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionChangedCallback:Lorg/chromium/base/Callback;

    new-instance p2, Lorg/chromium/ui/DropdownPopupWindow;

    invoke-direct {p2, p1, p3}, Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    new-instance p3, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;

    invoke-direct {p3, p0}, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;-><init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V

    invoke-virtual {p2, p3}, Lorg/chromium/ui/DropdownPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    array-length p3, p5

    if-lez p3, :cond_0

    const/4 p3, 0x0

    aget p3, p5, p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-virtual {p2, p3}, Lorg/chromium/ui/DropdownPopupWindow;->setInitialSelection(I)V

    new-instance p3, Lorg/chromium/ui/DropdownAdapter;

    const/4 p5, 0x0

    invoke-direct {p3, p1, p4, p5}, Lorg/chromium/ui/DropdownAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p2, p3}, Lorg/chromium/ui/DropdownPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p2, p6}, Lorg/chromium/ui/DropdownPopupWindow;->setRtl(Z)V

    new-instance p1, Lorg/chromium/content/browser/input/SelectPopupDropdown$2;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/input/SelectPopupDropdown$2;-><init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V

    invoke-virtual {p2, p1}, Lorg/chromium/ui/DropdownPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-static {p7}, Lorg/chromium/content_public/browser/GestureListenerManager;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/GestureListenerManager;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/chromium/content/browser/input/SelectPopupDropdown$3;

    invoke-direct {p2, p0}, Lorg/chromium/content/browser/input/SelectPopupDropdown$3;-><init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V

    invoke-interface {p1, p2}, Lorg/chromium/content_public/browser/GestureListenerManager;->addListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/input/SelectPopupDropdown;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->notifySelection([I)V

    return-void
.end method

.method private notifySelection([I)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionNotified:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionChangedCallback:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionNotified:Z

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {p1}, Lorg/chromium/ui/DropdownPopupWindow;->dismiss()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->notifySelection([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionNotified:Z

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->postShow()V

    return-void
.end method
