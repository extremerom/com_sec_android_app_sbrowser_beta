.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/v0;
.implements Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;
.implements Lcom/sec/android/app/sbrowser/download/OmaDownloadController$Delegate;
.implements Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;
.implements Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;
.implements Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/x0;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->a(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;Lt/x0;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->a(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;Lt/x0;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->a(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Lt/x0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public handleTranslationRequestedEvent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;)V

    return-void
.end method

.method public onAction(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClicked(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->a(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->e(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Z)V

    return-void
.end method

.method public onSwipeViewRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->p(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V

    return-void
.end method
