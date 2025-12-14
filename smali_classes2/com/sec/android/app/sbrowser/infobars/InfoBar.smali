.class public abstract Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobars/InfoBarView;


# instance fields
.field private mContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

.field private mContext:Landroid/content/Context;

.field private mControlsEnabled:Z

.field private mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

.field private final mMessage:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mControlsEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mControlsEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public areControlsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mControlsEnabled:Z

    return p0
.end method

.method public createView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mView:Landroid/view/View;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const v1, 0x7f0b0617

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    return-object p0
.end method

.method public getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onAttach()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onButtonClicked(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->onButtonClicked(I)V

    :cond_0
    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->onCloseButtonClicked()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDetach()V
    .locals 0

    return-void
.end method

.method public onLoadStarted()V
    .locals 0

    return-void
.end method

.method public onPrimaryButtonClicked()V
    .locals 0

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 0

    return-void
.end method

.method public onTertiaryButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->onLinkClicked()V

    :cond_0
    return-void
.end method

.method public replaceView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->notifyInfoBarViewChanged()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setControlsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mControlsEnabled:Z

    return-void
.end method

.method public setInfoBarContainer(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->mContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    return-void
.end method
