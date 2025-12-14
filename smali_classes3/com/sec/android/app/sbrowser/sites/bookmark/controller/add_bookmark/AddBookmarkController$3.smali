.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFromDifferentMode(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->isSecretMode:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$4;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->r(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkUrlEditable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkParent(J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItemForBookmarkID(Ljava/lang/Long;)V

    goto/16 :goto_2

    :pswitch_1
    move-object p1, p2

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->q(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->n(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->s(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->t(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->isFromDifferentMode(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->r(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkUrlEditable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkParent(J)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->B(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->success:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_9

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItemForBookmarkID(Ljava/lang/Long;)V

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentGUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->w(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->v(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Ljava/util/HashMap;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->updateFolderPathHashMap(Ljava/util/HashMap;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    goto/16 :goto_2

    :pswitch_4
    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItemForBookmarkID(Ljava/lang/Long;)V

    goto :goto_2

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->r(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkUrlEditable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkParent(J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItemForBookmarkID(Ljava/lang/Long;)V

    goto :goto_2

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->z(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->y(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->x(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
