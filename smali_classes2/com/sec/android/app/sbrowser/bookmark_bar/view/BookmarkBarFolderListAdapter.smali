.class public Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private final mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

.field private mBookmarkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

.field private final mFromMoreButton:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsNoBookmarks:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

.field private mPopupMenu:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

.field private final mShowItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JIZLandroid/view/LayoutInflater;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    iput p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mShowItemCount:I

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    new-instance p6, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-direct {p6, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    move-object p7, p1

    check-cast p7, Landroid/app/Activity;

    invoke-virtual {p6, p7}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->setBookmarkUri(Landroid/app/Activity;)V

    if-eqz p5, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide p2

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p1, p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    if-eqz p5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->setBookmarkBarMoreMenuItems()V

    :cond_2
    iput-object p9, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method private dismissPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mPopupMenu:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mPopupMenu:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    return-void
.end method

.method private getBookmarkBarItem(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;I)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 12

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-wide/16 v10, 0x0

    const-string v5, ""

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->create(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method private inflate(Landroid/view/View;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-nez v0, :cond_0

    const v0, 0x7f0e0056

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0055

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0b0650

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTopDivider:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-eqz p0, :cond_2

    :cond_1
    const p0, 0x7f0b05ef

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    :cond_2
    const p0, 0x7f0b0d66

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const p0, 0x7f0b0649

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mBottomDivider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    return-object p1
.end method

.method private setBookmarkBarMoreMenuItems()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->ADD_TO_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const v2, 0x7f1403a3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->getBookmarkBarItem(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;I)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->EDIT_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const v2, 0x7f1403b9

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->getBookmarkBarItem(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;I)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setTextStyle(Landroid/widget/TextView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception in getItem : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si__BookmarkBarFolderListAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-nez p3, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->inflate(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;

    iget-object p3, p2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f140f55

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;->isHighContrastMode()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f06015b

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->inflate(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0800a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTopDivider:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v2, v4, :cond_2

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const v5, 0x7f060158

    if-ne v2, v4, :cond_3

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    const v2, 0x7f0800ca

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v3, ", "

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f141081

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->UPPER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v2, v4, :cond_4

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    const v3, 0x7f080280

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->ADD_TO_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v2, v4, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTopDivider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->EDIT_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v2, :cond_7

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;ILcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$2;

    invoke-direct {p3, p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$3;

    invoke-direct {p3, p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method

.method public getViewForMeasure(ILandroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->inflate(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-nez v1, :cond_0

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f140f55

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f1502ec

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->setTextStyle(Landroid/widget/TextView;I)V

    return-object p2
.end method

.method public setBookmarkList(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->setBookmarkUri(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->UPPER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mShowItemCount:I

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->setBookmarkBarMoreMenuItems()V

    :cond_4
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public showPopupMenu(Landroid/view/View;I)V
    .locals 10

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mIsNoBookmarks:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mFromMoreButton:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mBookmarkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->UPPER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v0, v1, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->ADD_TO_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v0, v1, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->EDIT_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->dismissPopupMenu()V

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->FOLDER:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->URL:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;->isSecretMode()Z

    move-result v8

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;->isOpenInOtherWindowAvailable()Z

    move-result v9

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;-><init>(JLcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;Ljava/lang/String;Landroid/view/View;ZZ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mPopupMenu:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->setListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mPopupMenu:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, p1}, Lt/x0;->seslSetOffset(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mPopupMenu:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->mPopupMenu:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onShow(Lt/x0;)V

    :cond_5
    :goto_2
    return-void
.end method
