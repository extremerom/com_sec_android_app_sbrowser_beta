.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->createHandlerIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    aget-object p1, v0, p1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$2;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->startShareUrlActivity()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->setIntentLaunched(Z)V

    :goto_0
    return v0
.end method
