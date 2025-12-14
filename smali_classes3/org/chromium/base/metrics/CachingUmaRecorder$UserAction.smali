.class Lorg/chromium/base/metrics/CachingUmaRecorder$UserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/metrics/CachingUmaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAction"
.end annotation


# instance fields
.field private final mElapsedRealtimeMillis:J

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/metrics/CachingUmaRecorder$UserAction;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lorg/chromium/base/metrics/CachingUmaRecorder$UserAction;->mElapsedRealtimeMillis:J

    return-void
.end method


# virtual methods
.method public flushTo(Lorg/chromium/base/metrics/UmaRecorder;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/metrics/CachingUmaRecorder$UserAction;->mName:Ljava/lang/String;

    iget-wide v1, p0, Lorg/chromium/base/metrics/CachingUmaRecorder$UserAction;->mElapsedRealtimeMillis:J

    invoke-interface {p1, v0, v1, v2}, Lorg/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V

    return-void
.end method
