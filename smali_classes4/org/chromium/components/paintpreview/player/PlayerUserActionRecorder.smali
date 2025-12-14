.class Lorg/chromium/components/paintpreview/player/PlayerUserActionRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sLastRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/components/paintpreview/player/PlayerUserActionRecorder;->sLastRecordMap:Ljava/util/Map;

    return-void
.end method

.method public static recordLinkClick()V
    .locals 1

    const-string v0, "PaintPreview.Player.LinkClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    return-void
.end method

.method public static recordLongPress()V
    .locals 1

    const-string v0, "PaintPreview.Player.LongPress"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    return-void
.end method

.method public static recordUnconsumedTap()V
    .locals 1

    const-string v0, "PaintPreview.Player.UnconsumedTap"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    return-void
.end method
