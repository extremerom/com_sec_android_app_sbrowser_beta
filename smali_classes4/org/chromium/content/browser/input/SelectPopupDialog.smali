.class public Lorg/chromium/content/browser/input/SelectPopupDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/SelectPopup$Ui;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final SELECT_DIALOG_ATTRS:[I


# instance fields
.field private final mListBoxPopup:Landroid/app/AlertDialog;

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
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lorg/chromium/content/R$attr;->select_dialog_multichoice:I

    sget v1, Lorg/chromium/content/R$attr;->select_dialog_singlechoice:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->SELECT_DIALOG_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/base/Callback;Ljava/util/List;Z[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/base/Callback<",
            "[I>;",
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/input/SelectPopupItem;",
            ">;Z[I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mSelectionChangedCallback:Lorg/chromium/base/Callback;

    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-static {}, Lorg/chromium/ui/widget/UiWidgetFactory;->getInstance()Lorg/chromium/ui/widget/UiWidgetFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/ui/widget/UiWidgetFactory;->createAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-static {p1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->setInverseBackgroundForced(Landroid/app/AlertDialog;)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/chromium/content/browser/input/SelectPopupDialog$1;

    invoke-direct {v3, p0, p2}, Lorg/chromium/content/browser/input/SelectPopupDialog$1;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)V

    const/4 v4, -0x1

    invoke-virtual {p1, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/chromium/content/browser/input/SelectPopupDialog$2;

    invoke-direct {v3, p0}, Lorg/chromium/content/browser/input/SelectPopupDialog$2;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V

    const/4 v4, -0x2

    invoke-virtual {p1, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupAdapter;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p4}, Lorg/chromium/content/browser/input/SelectPopupDialog;->getSelectDialogLayout(Z)I

    move-result v3

    invoke-direct {v2, p1, v3, p3}, Lorg/chromium/content/browser/input/SelectPopupAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    if-eqz p4, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :goto_0
    array-length p1, p5

    if-ge v0, p1, :cond_2

    aget p1, p5, v0

    invoke-virtual {p2, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    new-instance p1, Lorg/chromium/content/browser/input/SelectPopupDialog$3;

    invoke-direct {p1, p0, p2}, Lorg/chromium/content/browser/input/SelectPopupDialog$3;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    array-length p1, p5

    if-lez p1, :cond_2

    aget p1, p5, v0

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    aget p1, p5, v0

    invoke-virtual {p2, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    new-instance p2, Lorg/chromium/content/browser/input/SelectPopupDialog$4;

    invoke-direct {p2, p0}, Lorg/chromium/content/browser/input/SelectPopupDialog$4;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/input/SelectPopupDialog;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/input/SelectPopupDialog;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->notifySelection([I)V

    return-void
.end method

.method private getSelectDialogLayout(Z)I
    .locals 2

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lorg/chromium/content/R$style;->SelectPopupDialog:I

    sget-object v1, Lorg/chromium/content/browser/input/SelectPopupDialog;->SELECT_DIALOG_ATTRS:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getSelectedIndices(Landroid/widget/ListView;)[I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v2, [I

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private notifySelection([I)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mSelectionNotified:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mSelectionChangedCallback:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mSelectionNotified:Z

    return-void
.end method

.method private static setInverseBackgroundForced(Landroid/app/AlertDialog;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->notifySelection([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mSelectionNotified:Z

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/chromium/content_public/browser/util/DialogTypeRecorder;->recordDialogType(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->notifySelection([I)V

    :goto_0
    return-void
.end method
