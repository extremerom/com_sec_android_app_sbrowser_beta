.class Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mTextWatcher:Landroid/text/TextWatcher;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Lt/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onShow$10(Lt/x0;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onDelete$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onOpenInOtherWindow$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onRename$5()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onRename$4(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onRename$2(Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onCreateFolder$9(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onRename$1(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private handlePositiveButtonClick(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->isEmptyText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->editBookmarkFolder(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object p1

    invoke-virtual {p1}, Lm/y;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onRename$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private isEmptyText()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic j(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onRename$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;JLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->lambda$onDelete$7(JLandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$onCreateFolder$9(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onDelete$7(JLandroid/content/DialogInterface;I)V
    .locals 0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->deleteBookmark(Landroid/app/Activity;J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method private static synthetic lambda$onDelete$8(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onOpenInOtherWindow$0(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInOtherWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRename$1(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p4, v0, :cond_6

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->isEmptyText()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return v0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result p4

    if-ne p4, v0, :cond_5

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->editBookmarkFolder(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    return p3

    :cond_5
    :goto_0
    return v0

    :cond_6
    return p3
.end method

.method private synthetic lambda$onRename$2(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->C(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/k;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0, p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->x(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroidx/appcompat/widget/AppCompatEditText;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$onRename$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onRename$4(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->handlePositiveButtonClick(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void
.end method

.method private synthetic lambda$onRename$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$onRename$6(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->C(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/k;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->D(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/l;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->x(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroidx/appcompat/widget/AppCompatEditText;)V

    return-void
.end method

.method private synthetic lambda$onShow$10(Lt/x0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->u(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lt/x0;)V

    return-void
.end method

.method private updateSoftInputMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    or-int/lit8 p1, p1, 0x10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public onAddToBookmarkBar()V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onAddToBookmarkBar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5820"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addBookmarkBar()V

    return-void
.end method

.method public onCopyLink(Ljava/lang/String;)V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onCopyLink"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5826"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->TEXT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method public onCreateFolder()V
    .locals 9

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onCreateFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5830"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->setBookmarkUri(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarRoot(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v7, Lcom/sec/android/app/sbrowser/main_view/i;

    invoke-direct {v7, v0, v5}, Lcom/sec/android/app/sbrowser/main_view/i;-><init>(Ljava/lang/Object;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->v(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->h(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->showCreateFolderDialog(ZZ)V

    return-void
.end method

.method public onDelete(JZ)V
    .locals 4

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5827"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getChildrenSize(J)I

    move-result v2

    if-lez v2, :cond_0

    const v2, 0x7f120002

    goto :goto_0

    :cond_0
    const v2, 0x7f120003

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120007

    invoke-virtual {p3, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1502e8

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v2, v1, Lm/k;->a:Lm/h;

    iput-boolean v0, v2, Lm/h;->m:Z

    const-string v0, ""

    invoke-virtual {v1, v0}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    iget-object v1, v0, Lm/k;->a:Lm/h;

    iput-object p3, v1, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance p3, Lcom/sec/android/app/sbrowser/main_view/j;

    invoke-direct {p3, p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/j;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;J)V

    const p1, 0x7f140433

    invoke-virtual {v0, p1, p3}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/e;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/main_view/e;-><init>(I)V

    const p3, 0x7f1402c1

    invoke-virtual {p1, p3, p2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->w(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/l;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->i(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->i(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method public onEditBookmark(J)V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onEditBookmark"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5832"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->getBookmarkItem(J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/sites/AddBookmarkUtil;->getBookmarkIntent(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0b004f

    const/16 v1, 0x80

    invoke-static {p2, v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;ILandroid/content/Intent;I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method public onEditBookmarkBar()V
    .locals 3

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onEditBookmarkBar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5821"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->p(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object p0

    const/4 v0, 0x1

    const v1, 0x7f0b004f

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openSites(IZI)V

    return-void
.end method

.method public onMove(J)V
    .locals 6

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onMove"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5829"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkItem(Ljava/lang/Long;Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "from_move_bookmark"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "bookmark_id_list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    cmp-long p1, p1, v4

    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->getBookmarkItem(Ljava/lang/Long;Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p1, "parent_ids"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "bookmark_id"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "bookmark_type_list"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result p1

    const-string p2, "account_type"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p1

    const/16 p2, 0x300

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;IZLandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method public onOpenInNewTab(Ljava/lang/String;)V
    .locals 8

    const-string v0, "onOpenInNewTab"

    const-string v1, "si__BookmarkBarHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "5822"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->G(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "onOpenInNewTab, currentTab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->p(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v2

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method public onOpenInNewWindow(Ljava/lang/String;)V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onOpenInNewWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5823"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method public onOpenInOtherWindow(Ljava/lang/String;)V
    .locals 3

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onOpenInOtherWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5824"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onOpenInSecretMode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onOpenInSecretMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5831"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->openInSecretMode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method public onRename(J)V
    .locals 7

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onRename"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5828"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->setBookmarkUri(Landroid/app/Activity;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e01fe

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    const v2, 0x7f0b048d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->x(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroidx/appcompat/widget/AppCompatEditText;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    const v2, 0x7f0b0490

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->E(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    const v2, 0x7f0b04ad

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->y(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/text/InputFilter;

    aput-object v2, v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1404b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->z(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;J)V

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/c;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/c;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    new-instance v2, Lm/k;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f1501c5

    invoke-direct {v2, v5, v6}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->C(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/k;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->r(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/k;

    move-result-object v1

    invoke-virtual {v1, p2}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->r(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/k;

    move-result-object v1

    const v2, 0x7f1404b5

    invoke-virtual {v1, v2}, Lm/k;->e(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->r(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/k;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/d;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/sbrowser/main_view/d;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Landroid/view/View;)V

    const p2, 0x7f140251

    invoke-virtual {v1, p2, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->r(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/k;

    move-result-object p2

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/e;

    invoke-direct {v1, v3}, Lcom/sec/android/app/sbrowser/main_view/e;-><init>(I)V

    const v2, 0x7f140be5

    invoke-virtual {p2, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->r(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/k;

    move-result-object v1

    invoke-virtual {v1}, Lm/k;->create()Lm/l;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->D(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/l;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->B(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroid/widget/Button;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->q(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->q(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/Button;

    move-result-object p2

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/f;

    invoke-direct {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/f;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->q(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/g;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/main_view/g;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->updateSoftInputMode(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    return-void
.end method

.method public onShow(Lt/x0;)V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    check-cast p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->u(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lt/x0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lt/x0;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lt/x0;->setOnDismissListener(Lt/v0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_BOOKMARK_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onPopupMenuShown(Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;)V

    :cond_0
    return-void
.end method
