.class public Lcom/sec/terrace/content/browser/input/TinSelectPopup;
.super Lorg/chromium/content/browser/input/SelectPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/input/TinSelectPopup$UserDataFactoryLazyHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopup;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    return-wide v0
.end method

.method public static synthetic access$700(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    return-wide v0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinSelectPopup;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/input/SelectPopup;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/SelectPopup;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    return-object p0
.end method


# virtual methods
.method public isNativeWebContentsAndroidDestroyed()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method public isTabletDevice()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isNonMultiDisplayContextOnTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public resizeWebSelectDialog()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    instance-of v1, v0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->resizeWebSelectDialog()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->isNativeWebContentsAndroidDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectPopupDropdown;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    check-cast p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->hide(Z)V

    :cond_1
    return-void
.end method

.method public show(Landroid/view/View;J[Ljava/lang/String;[IZ[IZI)V
    .locals 15

    move-object v8, p0

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-super/range {p0 .. p9}, Lorg/chromium/content/browser/input/SelectPopup;->show(Landroid/view/View;J[Ljava/lang/String;[IZ[IZI)V

    return-void

    :cond_0
    iget-object v3, v8, Lorg/chromium/content/browser/input/SelectPopup;->mContainerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v8, Lorg/chromium/content/browser/input/SelectPopup;->mContainerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v8, Lorg/chromium/content/browser/input/SelectPopup;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    new-instance v5, Lorg/chromium/content/browser/input/SelectPopupItem;

    aget-object v6, v2, v4

    aget v7, p5, v4

    invoke-direct {v5, v6, v7}, Lorg/chromium/content/browser/input/SelectPopupItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-wide v0, v8, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    iget-object v0, v8, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    if-nez v0, :cond_4

    new-instance v9, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    new-instance v7, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;

    invoke-direct {v7, p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;-><init>(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)V

    move-object v0, v9

    move-object v1, v3

    move-object v2, p0

    move-object v3, v10

    move/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/SelectPopup;Ljava/util/List;Z[IILcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;)V

    iput-object v9, v8, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    goto :goto_1

    :cond_4
    move-object v9, v0

    check-cast v9, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    const/4 v14, 0x1

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p9

    invoke-virtual/range {v9 .. v14}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->update(Ljava/util/List;Z[IIZ)V

    :goto_1
    iget-object v0, v8, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/SelectPopup$Ui;->show()V

    return-void

    :cond_5
    :goto_2
    iput-wide v0, v8, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    iget-wide v2, v8, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/chromium/content/browser/input/SelectPopupJni;->get()Lorg/chromium/content/browser/input/SelectPopup$Natives;

    move-result-object v0

    iget-wide v1, v8, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    iget-wide v3, v8, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-wide/from16 p2, v1

    move-object/from16 p4, p0

    move-wide/from16 p5, v3

    move-object/from16 p7, v5

    invoke-interface/range {p1 .. p7}, Lorg/chromium/content/browser/input/SelectPopup$Natives;->selectMenuItems(JLorg/chromium/content/browser/input/SelectPopup;J[I)V

    :cond_6
    return-void
.end method
