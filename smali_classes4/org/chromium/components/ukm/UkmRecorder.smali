.class public Lorg/chromium/components/ukm/UkmRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/ukm/UkmRecorder$Metric;,
        Lorg/chromium/components/ukm/UkmRecorder$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mEventName:Ljava/lang/String;

.field private mMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/ukm/UkmRecorder$Metric;",
            ">;"
        }
    .end annotation
.end field

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/ukm/UkmRecorder;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-object p2, p0, Lorg/chromium/components/ukm/UkmRecorder;->mEventName:Ljava/lang/String;

    return-void
.end method

.method private static getNameFromMetric(Lorg/chromium/components/ukm/UkmRecorder$Metric;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/ukm/UkmRecorder$Metric;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private static getValueFromMetric(Lorg/chromium/components/ukm/UkmRecorder$Metric;)I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/components/ukm/UkmRecorder$Metric;->mValue:I

    return p0
.end method


# virtual methods
.method public addMetric(Ljava/lang/String;I)Lorg/chromium/components/ukm/UkmRecorder;
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/ukm/UkmRecorder;->mMetrics:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/ukm/UkmRecorder;->mMetrics:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/ukm/UkmRecorder;->mMetrics:Ljava/util/List;

    new-instance v1, Lorg/chromium/components/ukm/UkmRecorder$Metric;

    invoke-direct {v1, p1, p2}, Lorg/chromium/components/ukm/UkmRecorder$Metric;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public record()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/ukm/UkmRecorder;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/ukm/UkmRecorder;->mMetrics:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/ukm/UkmRecorder;->mMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/chromium/components/ukm/UkmRecorder$Metric;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/ukm/UkmRecorder$Metric;

    invoke-static {}, Lorg/chromium/components/ukm/UkmRecorderJni;->get()Lorg/chromium/components/ukm/UkmRecorder$Natives;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/components/ukm/UkmRecorder;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object p0, p0, Lorg/chromium/components/ukm/UkmRecorder;->mEventName:Ljava/lang/String;

    invoke-interface {v1, v2, p0, v0}, Lorg/chromium/components/ukm/UkmRecorder$Natives;->recordEventWithMultipleMetrics(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;[Lorg/chromium/components/ukm/UkmRecorder$Metric;)V

    return-void
.end method
