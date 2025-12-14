.class public final Landroid/support/v4/media/session/i;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/support/v4/media/session/j;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/session/m;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    iget-object v0, v0, Landroid/support/v4/media/session/j;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    iget-object v1, v1, Landroid/support/v4/media/session/j;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/m;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {v1}, Landroid/support/v4/media/session/m;->c()Landroid/support/v4/media/session/j;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, v0, Landroid/support/v4/media/session/m;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p2, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c:Landroid/support/v4/media/session/d;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string p2, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p2, "android.support.v4.media.session.SESSION_TOKEN2"

    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->d:La3/d;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v2, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(La3/d;)V

    const-string p1, "a"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p3, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :cond_3
    const-string v1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_2

    :cond_4
    const-string v1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    const-string p3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto :goto_2

    :cond_5
    const-string v1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_2

    :cond_6
    const-string v1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/media/session/j;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_8
    .catch Landroid/os/BadParcelableException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "MediaSessionCompat"

    const-string p1, "Could not unparcel the extra data."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    :try_start_0
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_URI"

    const-string v3, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onPrepare()V

    goto/16 :goto_0

    :cond_2
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->onSetCaptioningEnabled(Z)V

    goto :goto_0

    :cond_6
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->onSetRepeatMode(I)V

    goto :goto_0

    :cond_7
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->onSetShuffleMode(I)V

    goto :goto_0

    :cond_8
    const-string v1, "android.support.v4.media.session.action.SET_RATING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    const-string v1, "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->onSetPlaybackSpeed(F)V

    goto :goto_0

    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MediaSessionCompat"

    const-string p1, "Could not unparcel the data."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onFastForward()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onFastForward()V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {v2, p1}, Landroid/support/v4/media/session/j;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final onPause()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onPause()V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onPlay()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onPlay()V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onPrepare()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onPrepare()V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/p;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onRewind()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onRewind()V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onSeekTo(J)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onSeekTo(J)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onSetPlaybackSpeed(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->onSetPlaybackSpeed(F)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onSetRating(Landroid/media/Rating;)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-static {p1}, Landroid/support/v4/media/c;->b(Landroid/media/Rating;)I

    move-result v2

    invoke-static {p1}, Landroid/support/v4/media/c;->e(Landroid/media/Rating;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "Rating"

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/media/c;->a(Landroid/media/Rating;)F

    move-result p1

    cmpg-float v2, p1, v5

    if-ltz v2, :cond_2

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    goto/16 :goto_5

    :cond_2
    :goto_0
    const-string p1, "Invalid percentage-based rating value"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/media/c;->c(Landroid/media/Rating;)F

    move-result p1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid rating style ("

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for a star rating"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    const/high16 v3, 0x40a00000    # 5.0f

    goto :goto_1

    :cond_4
    const/high16 v3, 0x40800000    # 4.0f

    goto :goto_1

    :cond_5
    const/high16 v3, 0x40400000    # 3.0f

    :goto_1
    cmpg-float v5, p1, v5

    if-ltz v5, :cond_7

    cmpl-float v3, p1, v3

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    invoke-direct {v1, p1, v2}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    goto :goto_5

    :cond_7
    :goto_2
    const-string p1, "Trying to set out of range star-based rating"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/media/c;->f(Landroid/media/Rating;)Z

    move-result p1

    new-instance v1, Landroid/support/v4/media/RatingCompat;

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v3, v5

    :goto_3
    const/4 p1, 0x2

    invoke-direct {v1, v3, p1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    goto :goto_5

    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/media/c;->d(Landroid/media/Rating;)Z

    move-result p1

    new-instance v1, Landroid/support/v4/media/RatingCompat;

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_4
    const/4 p1, 0x1

    invoke-direct {v1, v3, p1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    goto :goto_5

    :cond_a
    packed-switch v2, :pswitch_data_1

    goto :goto_5

    :pswitch_4
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-direct {v1, p1, v2}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    :goto_6
    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/j;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final onSkipToNext()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onSkipToNext()V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onSkipToPrevious()V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onSkipToQueueItem(J)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/j;->onSkipToQueueItem(J)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/media/session/i;->a()Landroid/support/v4/media/session/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->onStop()V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    return-void
.end method
