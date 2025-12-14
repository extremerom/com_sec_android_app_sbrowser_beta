.class public Lorg/chromium/base/jank_tracker/JankMetricUMARecorderJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;


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

.method public static get()Lorg/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/jank_tracker/JankMetricUMARecorderJni;

    invoke-direct {v0}, Lorg/chromium/base/jank_tracker/JankMetricUMARecorderJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public recordJankMetrics([J[IJJI)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MJ46uzUz(Ljava/lang/Object;Ljava/lang/Object;JJI)V

    return-void
.end method
