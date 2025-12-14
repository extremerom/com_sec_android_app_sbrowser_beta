.class public Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNextSlide:Landroid/app/RemoteAction;

.field private final mNextTrack:Landroid/app/RemoteAction;

.field private final mPause:Landroid/app/RemoteAction;

.field private final mPlay:Landroid/app/RemoteAction;

.field private mPlaybackState:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

.field private final mPreviousSlide:Landroid/app/RemoteAction;

.field private final mPreviousTrack:Landroid/app/RemoteAction;

.field private final mReplay:Landroid/app/RemoteAction;

.field private final mSeekBackward:Landroid/app/RemoteAction;

.field private final mSeekForward:Landroid/app/RemoteAction;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/terrace/R$drawable;->media_session_ic_previous:I

    sget v8, Lcom/sec/terrace/R$string;->go_prev:I

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v0, p0

    move v3, v7

    move v4, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPreviousTrack:Landroid/app/RemoteAction;

    sget v4, Lcom/sec/terrace/R$string;->media_common_prev_slide:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPreviousSlide:Landroid/app/RemoteAction;

    sget v3, Lcom/sec/terrace/R$drawable;->media_session_ic_fast_rewind:I

    sget v7, Lcom/sec/terrace/R$string;->go_forward:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, p0

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mSeekBackward:Landroid/app/RemoteAction;

    sget v9, Lcom/sec/terrace/R$drawable;->media_session_ic_play:I

    sget v10, Lcom/sec/terrace/R$string;->media_common_play:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPlay:Landroid/app/RemoteAction;

    sget v3, Lcom/sec/terrace/R$drawable;->media_session_ic_pause:I

    sget v4, Lcom/sec/terrace/R$string;->media_common_pause:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPause:Landroid/app/RemoteAction;

    const/4 v2, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mReplay:Landroid/app/RemoteAction;

    sget v9, Lcom/sec/terrace/R$drawable;->media_session_ic_next:I

    const/4 v1, 0x6

    const/4 v2, 0x3

    move-object v0, p0

    move v3, v9

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mNextTrack:Landroid/app/RemoteAction;

    sget v4, Lcom/sec/terrace/R$string;->media_common_next_slide:I

    const/4 v1, 0x7

    const/16 v2, 0x13

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mNextSlide:Landroid/app/RemoteAction;

    sget v3, Lcom/sec/terrace/R$drawable;->media_session_ic_fast_forward:I

    const/16 v1, 0x8

    const/4 v2, 0x5

    move-object v0, p0

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mSeekForward:Landroid/app/RemoteAction;

    sget-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->END_OF_VIDEO:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPlaybackState:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-void
.end method

.method private createRemoteAction(IIIILjava/lang/Boolean;Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)Landroid/app/RemoteAction;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.MediaAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/pip/TerracePipIntentUtils;->addTrustedIntentExtras(Landroid/content/Intent;)V

    const-string v1, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.ControlType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.NativePointer"

    invoke-virtual {p6}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;->getNativePointerKey()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p5, :cond_0

    const-string p2, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.ControlState"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    iget-object p2, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mContext:Landroid/content/Context;

    const/high16 p5, 0xc000000

    invoke-static {p2, p1, v0, p5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance p2, Landroid/app/RemoteAction;

    iget-object p5, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {p5, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string p4, ""

    invoke-direct {p2, p3, p0, p4, p1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object p2
.end method


# virtual methods
.method public getActionsForPictureInPictureParams(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPreviousTrack:Landroid/app/RemoteAction;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v8, v2}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPreviousTrack:Landroid/app/RemoteAction;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mSeekBackward:Landroid/app/RemoteAction;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x13

    if-nez v8, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v8, v7

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v6

    :goto_3
    if-eqz v8, :cond_6

    iget-object v10, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPreviousSlide:Landroid/app/RemoteAction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v10, v2}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPreviousSlide:Landroid/app/RemoteAction;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager$1;->$SwitchMap$com$sec$terrace$content$browser$pip$TerracePipConstants$PlaybackState:[I

    iget-object v10, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPlaybackState:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v2, v2, v10

    if-eq v2, v6, :cond_9

    if-eq v2, v1, :cond_8

    if-eq v2, v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mReplay:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPlay:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPause:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    if-eqz v3, :cond_b

    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mNextTrack:Landroid/app/RemoteAction;

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mNextTrack:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mSeekForward:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v8, :cond_d

    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mNextSlide:Landroid/app/RemoteAction;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mNextSlide:Landroid/app/RemoteAction;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Landroid/app/RemoteAction;

    filled-new-array {v7}, [I

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v6, v6, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.MediaAction"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    const/4 v4, -0x1

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string v2, ""

    invoke-direct {p1, v1, v2, v2, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v7}, Landroid/app/RemoteAction;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object v0
.end method

.method public getPlaybackState()Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPlaybackState:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-object p0
.end method

.method public updatePlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->mPlaybackState:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-void
.end method
