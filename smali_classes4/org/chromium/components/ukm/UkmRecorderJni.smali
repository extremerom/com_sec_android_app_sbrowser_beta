.class public Lorg/chromium/components/ukm/UkmRecorderJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/ukm/UkmRecorder$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/ukm/UkmRecorder$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/ukm/UkmRecorderJni;

    invoke-direct {v0}, Lorg/chromium/components/ukm/UkmRecorderJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public recordEventWithMultipleMetrics(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;[Lorg/chromium/components/ukm/UkmRecorder$Metric;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mp922OIZ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
