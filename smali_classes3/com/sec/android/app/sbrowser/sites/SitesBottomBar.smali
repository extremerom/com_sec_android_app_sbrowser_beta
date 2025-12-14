.class public Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mBottomBarLayout:Landroid/widget/LinearLayout;

.field private mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewDelegate;

.field private mDeleteBottomBarButton:Landroid/widget/LinearLayout;

.field private mDeleteBottomText:Landroid/widget/TextView;

.field private mEditBottomBarButton:Landroid/widget/LinearLayout;

.field private mEditBottomText:Landroid/widget/TextView;

.field private mMoveBottomBarButton:Landroid/widget/LinearLayout;

.field private mMoveBottomText:Landroid/widget/TextView;

.field private mRenameBottomBarButton:Landroid/widget/LinearLayout;

.field private mRenameBottomText:Landroid/widget/TextView;

.field private mSelectedSitesPage:I

.field private mShareBottomBarButton:Landroid/widget/LinearLayout;

.field private mShareBottomText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mSelectedSitesPage:I

    return-void
.end method

.method private handleOneFolderSelected(ZZZLjava/lang/String;)V
    .locals 2

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isMobileBookmarkBarSync4(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz p4, :cond_3

    move p3, v1

    goto :goto_1

    :cond_3
    move p3, v0

    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz p4, :cond_4

    move p3, v1

    goto :goto_2

    :cond_4
    move p3, v0

    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private handleOneUrlSelected(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    if-ne p1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p3, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object p2, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    if-ne p1, p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public enableBottomBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    return-void
.end method

.method public getBottomBar()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mBottomBarLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getDeleteButton()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getEditButton()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getMoveButton()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getRenameButton()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getShareButton()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public handleBottomBarMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140f4e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140f46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140f58

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleCABShownMode(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public handleDpadLeftRight(Landroid/view/KeyEvent;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-eqz p2, :cond_7

    if-eqz v0, :cond_5

    return v3

    :cond_5
    if-eqz v2, :cond_6

    const/16 p2, 0x15

    if-ne p1, p2, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p0

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    goto :goto_2

    :goto_3
    return p0

    :cond_7
    :goto_4
    return v1
.end method

.method public handleDpadRight(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v0, v2

    move v3, v0

    :goto_1
    const/16 v4, 0x15

    if-eq p1, v4, :cond_5

    const/16 v5, 0x16

    if-eq p1, v5, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_8

    if-nez v0, :cond_7

    if-eqz v3, :cond_6

    if-ne p1, v4, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method public hideAllBottomBarMenus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initializeBottomBar()Landroid/view/View;
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mBottomBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b03e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomText:Landroid/widget/TextView;

    const v1, 0x7f0b0b47

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomText:Landroid/widget/TextView;

    const v1, 0x7f0b048d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomText:Landroid/widget/TextView;

    const v1, 0x7f0b09ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomText:Landroid/widget/TextView;

    const v1, 0x7f0b0786

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomText:Landroid/widget/TextView;

    const v1, 0x7f0b0b46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b03de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b09e9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b048a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0b0785

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0b01bf

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    const v6, 0x7f0b01b5

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    const v6, 0x7f0b01b6

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    const v6, 0x7f0b01bc

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    const v6, 0x7f0b01be

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mSelectedSitesPage:I

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v7

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mBottomBarLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0609cb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v8, 0x7f060be1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mBottomBarLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v8, 0x7f060257

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0601ff

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0601fd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomText:Landroid/widget/TextView;

    const v2, 0x7f0800b1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    const v3, 0x7f060e10

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-object v0
.end method

.method public refreshBottomBar(Ljava/util/List;ILcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;I",
            "Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;",
            "ZZ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v8, v9, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewDelegate;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewDelegate;->isBookmarkExistInFolder(J)Z

    move-result v6

    :goto_1
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    if-eq p3, p1, :cond_4

    sget-object p1, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    if-ne p3, p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p4, :cond_6

    if-nez p5, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_8
    sget-object p1, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    if-eq p3, p1, :cond_9

    sget-object p1, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    if-ne p3, p1, :cond_d

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object p4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p2, p4, :cond_c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result p1

    invoke-direct {p0, p3, p1, p5}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->handleOneUrlSelected(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;ZZ)V

    goto :goto_5

    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewDelegate;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-interface {p3, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewDelegate;->isBookmarkExistInFolder(J)Z

    move-result p3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p5, p1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->handleOneFolderSelected(ZZZLjava/lang/String;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public refreshBottombarLongPress(IIIZLjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getShareButton()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object p2

    if-le p1, p3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x1

    if-le p1, p3, :cond_2

    if-nez p4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    if-eqz p5, :cond_b

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-le p4, p2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getEditButton()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getRenameButton()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getMoveButton()Landroid/widget/LinearLayout;

    move-result-object p0

    if-ne p1, p3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_5
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result p1

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object p3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p2, p3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getRenameButton()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getEditButton()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p1, :cond_6

    move p3, v1

    goto :goto_2

    :cond_6
    move p3, v2

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getMoveButton()Landroid/widget/LinearLayout;

    move-result-object p0

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getMoveButton()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p1, :cond_9

    if-nez p6, :cond_9

    move p3, v1

    goto :goto_4

    :cond_9
    move p3, v2

    :goto_4
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getRenameButton()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getEditButton()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_6
    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewDelegate;

    return-void
.end method

.method public setDeleteButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDeleteText(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const p1, 0x7f140434

    goto :goto_0

    :cond_1
    const p1, 0x7f140433

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mSelectedSitesPage:I

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SEARCH:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mSelectedSitesPage:I

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mEditBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mRenameBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mMoveBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setSearchActionModeMenuVisibility(ZZZZZZZI)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getShareButton()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-nez p8, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getShareButton()Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getShareButton()Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getEditButton()Landroid/widget/LinearLayout;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getEditButton()Landroid/widget/LinearLayout;

    move-result-object p3

    if-eqz p5, :cond_3

    if-nez p6, :cond_3

    move p4, v2

    goto :goto_1

    :cond_3
    move p4, v1

    :goto_1
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object p3

    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object p0

    if-eqz p7, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public setShareButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
