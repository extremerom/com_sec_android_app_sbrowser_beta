.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImageContentView:Landroid/widget/ImageView;

.field private mPopupView:Landroid/view/View;

.field private mTextContentView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->initializePopup()V

    return-void
.end method

.method private initializePopup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0453

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mPopupView:Landroid/view/View;

    const v1, 0x7f0b05c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mImageContentView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mPopupView:Landroid/view/View;

    const v1, 0x7f0b05c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mTextContentView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mTextContentView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWriteDebugPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, p1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "HelpMeWriteDebugPopupWindow"

    const-string p1, "[show] activity is already destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
