.class public Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;
.super Lt/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;
    }
.end annotation


# instance fields
.field private mActivityId:I

.field private mAnchor:Landroid/view/View;

.field private final mId:J

.field private final mIsFolder:Z

.field private final mIsOpenInOtherWindowAvailable:Z

.field private final mIsSecretMode:Z

.field private mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;Ljava/lang/String;Landroid/view/View;ZZ)V
    .locals 2

    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, v1}, Lt/x0;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mId:J

    sget-object p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->FOLDER:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    if-ne p3, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mIsFolder:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mUrl:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mIsSecretMode:Z

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mIsOpenInOtherWindowAvailable:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mActivityId:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-static {p1}, LG5/T2;->g(Landroid/view/Menu;)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->inflateMenu(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->setOnMenuItemClickListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mId:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mIsFolder:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method private inflateMenu(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$2;->$SwitchMap$com$sec$android$app$sbrowser$bookmark_bar$view$BookmarkBarPopupMenu$TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f100006

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->shouldBeOpenInOtherWindowMenuRemoved()Z

    move-result p1

    const v0, 0x7f0b019a

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0b0199

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const p1, 0x7f1403c1

    goto :goto_0

    :cond_2
    const p1, 0x7f1403c0

    :goto_0
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mIsSecretMode:Z

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const p1, 0x7f0b019b

    invoke-interface {p0, p1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f100008

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f100007

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private setOnMenuItemClickListener()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)V

    invoke-virtual {p0, v0}, Lt/x0;->setOnMenuItemClickListener(Lt/w0;)V

    return-void
.end method

.method private shouldBeOpenInOtherWindowMenuRemoved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mIsOpenInOtherWindowAvailable:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mActivityId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;->unRegisterPopup(I)V

    invoke-super {p0}, Lt/x0;->dismiss()V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    return-void
.end method

.method public show()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mActivityId:I

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;->registerPopup(ILt/x0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0172

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->mAnchor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    invoke-super {p0}, Lt/x0;->show()V

    return-void
.end method
