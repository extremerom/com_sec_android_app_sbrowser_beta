.class public Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;


# instance fields
.field private final mBookmarkListenerAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;->mBookmarkListenerAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

    return-void
.end method


# virtual methods
.method public onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;->mBookmarkListenerAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;->onAction(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
