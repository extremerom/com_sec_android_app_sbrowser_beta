.class public interface abstract Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;
    }
.end annotation


# virtual methods
.method public getSALoggingDetail()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public abstract getSALoggingEventId()I
.end method

.method public abstract id()I
.end method

.method public abstract release()V
.end method

.method public abstract setHoverPopupEnabled(Z)V
.end method

.method public abstract setOnClickListener(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;)V
.end method

.method public abstract shouldRemoveOnClickListener()Z
.end method

.method public abstract update()V
.end method
