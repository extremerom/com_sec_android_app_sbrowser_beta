.class public Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACCESSIBILITY_CREATE_ACCESSIBILITY_NODE_INFO_TOTAL_TIME:Ljava/lang/String; = "Accessibility.Android.Performance.CreateAccessibilityNodeInfo.TotalTime"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ACCESSIBILITY_INLINE_TEXT_BOXES_BUNDLE:Ljava/lang/String; = "Accessibility.Android.InlineTextBoxes.Bundle.FromFocus"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ACCESSIBILITY_INLINE_TEXT_BOXES_COUNT:Ljava/lang/String; = "Accessibility.InlineTextBoxes.Count"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ACCESSIBILITY_INLINE_TEXT_BOXES_DUPLICATE_REQUEST:Ljava/lang/String; = "Accessibility.Android.InlineTextBoxes.DuplicateRequest"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ACCESSIBILITY_INLINE_TEXT_BOXES_PRESENT_IN_UPDATE:Ljava/lang/String; = "Accessibility.InlineTextBoxes.PresentInUpdate"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ACCESSIBILITY_TIME_UNTIL_FIRST_ACCESSIBILITY_FOCUS:Ljava/lang/String; = "Accessibility.Android.Performance.TimeUntilFirstAccessibilityFocus"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTO_DISABLE_ACCESSIBILITY_DISABLED_TIME_INITIAL:Ljava/lang/String; = "Accessibility.Android.AutoDisableV2.DisabledTime.Initial"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTO_DISABLE_ACCESSIBILITY_DISABLED_TIME_SUCCESSIVE:Ljava/lang/String; = "Accessibility.Android.AutoDisableV2.DisabledTime.Successive"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTO_DISABLE_ACCESSIBILITY_DISABLE_METHOD_CALLED_INITIAL:Ljava/lang/String; = "Accessibility.Android.AutoDisableV2.DisableCalled.Initial"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTO_DISABLE_ACCESSIBILITY_DISABLE_METHOD_CALLED_SUCCESSIVE:Ljava/lang/String; = "Accessibility.Android.AutoDisableV2.DisableCalled.Successive"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTO_DISABLE_ACCESSIBILITY_ENABLED_TIME_INITIAL:Ljava/lang/String; = "Accessibility.Android.AutoDisableV2.EnabledTime.Initial"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTO_DISABLE_ACCESSIBILITY_ENABLED_TIME_SUCCESSIVE:Ljava/lang/String; = "Accessibility.Android.AutoDisableV2.EnabledTime.Successive"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTO_DISABLE_ACCESSIBILITY_REENABLE_METHOD_CALLED_INITIAL:Ljava/lang/String; = "Accessibility.Android.AutoDisableV2.ReEnableCalled.Initial"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTO_DISABLE_ACCESSIBILITY_REENABLE_METHOD_CALLED_SUCCESSIVE:Ljava/lang/String; = "Accessibility.Android.AutoDisableV2.ReEnabledCalled.Successive"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final CACHE_MAX_NODES_HISTOGRAM:Ljava/lang/String; = "Accessibility.Android.Cache.MaxNodesInCache"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final CACHE_PERCENTAGE_RETRIEVED_FROM_CACHE_HISTOGRAM:Ljava/lang/String; = "Accessibility.Android.Cache.PercentageRetrievedFromCache"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EVENTS_DROPPED_HISTOGRAM:Ljava/lang/String; = "Accessibility.Android.OnDemand.EventsDropped"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ONE_HUNDRED_PERCENT_HISTOGRAM:Ljava/lang/String; = "Accessibility.Android.OnDemand.OneHundredPercentEventsDropped"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ONE_HUNDRED_PERCENT_HISTOGRAM_AXMODE_BASIC:Ljava/lang/String; = "Accessibility.Android.OnDemand.OneHundredPercentEventsDropped.Basic"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ONE_HUNDRED_PERCENT_HISTOGRAM_AXMODE_COMPLETE:Ljava/lang/String; = "Accessibility.Android.OnDemand.OneHundredPercentEventsDropped.Complete"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ONE_HUNDRED_PERCENT_HISTOGRAM_AXMODE_FORM_CONTROLS:Ljava/lang/String; = "Accessibility.Android.OnDemand.OneHundredPercentEventsDropped.FormControls"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final PERCENTAGE_DROPPED_HISTOGRAM:Ljava/lang/String; = "Accessibility.Android.OnDemand.PercentageDropped"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final PERCENTAGE_DROPPED_HISTOGRAM_AXMODE_BASIC:Ljava/lang/String; = "Accessibility.Android.OnDemand.PercentageDropped.Basic"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final PERCENTAGE_DROPPED_HISTOGRAM_AXMODE_COMPLETE:Ljava/lang/String; = "Accessibility.Android.OnDemand.PercentageDropped.Complete"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final PERCENTAGE_DROPPED_HISTOGRAM_AXMODE_FORM_CONTROLS:Ljava/lang/String; = "Accessibility.Android.OnDemand.PercentageDropped.FormControls"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final USAGE_ACCESSIBILITY_ALWAYS_ON_TIME:Ljava/lang/String; = "Accessibility.Android.Usage.A11yAlwaysOn"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final USAGE_FOREGROUND_TIME:Ljava/lang/String; = "Accessibility.Android.Usage.Foreground"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final USAGE_NATIVE_INITIALIZED_TIME:Ljava/lang/String; = "Accessibility.Android.Usage.NativeInit"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mCurrentNodeConstructionStartTime:J

.field private mHasRecordedTimeToFirstAccessibilityFocus:Z

.field private mMaxNodesInCache:I

.field private mNodeWasCreatedFromScratch:I

.field private mNodeWasReturnedFromCache:I

.field private mOngoingSumOfTimeDisabled:J

.field private mTimeOfFirstShown:J

.field private mTimeOfLastDisabledCall:J

.field private mTimeOfNativeInitialization:J

.field private mTotalDispatchedEvents:I

.field private mTotalEnqueuedEvents:I

.field private mTotalTimeCreateAccessibilityNodeInfo:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfLastDisabledCall:J

    return-void
.end method


# virtual methods
.method public beginAccessibilityNodeInfoConstruction()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mCurrentNodeConstructionStartTime:J

    return-void
.end method

.method public endAccessibilityNodeInfoConstruction()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalTimeCreateAccessibilityNodeInfo:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mCurrentNodeConstructionStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalTimeCreateAccessibilityNodeInfo:J

    return-void
.end method

.method public hideAutoDisabledInstance()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mOngoingSumOfTimeDisabled:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfLastDisabledCall:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mOngoingSumOfTimeDisabled:J

    return-void
.end method

.method public incrementDispatchedEvents()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalDispatchedEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalDispatchedEvents:I

    return-void
.end method

.method public incrementEnqueuedEvents()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalEnqueuedEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalEnqueuedEvents:I

    return-void
.end method

.method public incrementNodeWasCreatedFromScratch()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mNodeWasCreatedFromScratch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mNodeWasCreatedFromScratch:I

    return-void
.end method

.method public incrementNodeWasReturnedFromCache()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mNodeWasReturnedFromCache:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mNodeWasReturnedFromCache:I

    return-void
.end method

.method public onDisableCalled(Z)V
    .locals 6

    const-string v0, "AccessibilityHistogramRecorder.onDisabledCalled"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    sub-long v4, v1, v4

    const-string p1, "Accessibility.Android.AutoDisableV2.EnabledTime.Initial"

    invoke-static {p1, v4, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    const-string p1, "Accessibility.Android.AutoDisableV2.DisableCalled.Initial"

    invoke-static {p1, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    sub-long v4, v1, v4

    const-string p1, "Accessibility.Android.AutoDisableV2.EnabledTime.Successive"

    invoke-static {p1, v4, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    const-string p1, "Accessibility.Android.AutoDisableV2.DisableCalled.Successive"

    invoke-static {p1, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    :goto_0
    iput-wide v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfLastDisabledCall:J

    iget-wide v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    sub-long/2addr v1, v3

    const-string p1, "Accessibility.Android.Usage.NativeInit"

    invoke-static {p1, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public onReEnableCalled(Z)V
    .locals 8

    const-string v0, "AccessibilityHistogramRecorder.onReEnabledCalled"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfLastDisabledCall:J

    sub-long v4, v1, v4

    iget-wide v6, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mOngoingSumOfTimeDisabled:J

    add-long/2addr v4, v6

    const-string p1, "Accessibility.Android.AutoDisableV2.DisabledTime.Initial"

    invoke-static {p1, v4, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    const-string p1, "Accessibility.Android.AutoDisableV2.ReEnableCalled.Initial"

    invoke-static {p1, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfLastDisabledCall:J

    sub-long v4, v1, v4

    iget-wide v6, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mOngoingSumOfTimeDisabled:J

    add-long/2addr v4, v6

    const-string p1, "Accessibility.Android.AutoDisableV2.DisabledTime.Successive"

    invoke-static {p1, v4, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    const-string p1, "Accessibility.Android.AutoDisableV2.ReEnabledCalled.Successive"

    invoke-static {p1, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    :goto_0
    iput-wide v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfLastDisabledCall:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mOngoingSumOfTimeDisabled:J

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public recordAccessibilityPerformanceHistograms()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->recordEventsHistograms()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->recordCacheHistograms()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->recordTotalTimeCreateAccessibilityNodeInfoHistogram()V

    return-void
.end method

.method public recordAccessibilityUsageHistograms()V
    .locals 10

    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    sub-long v6, v0, v4

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    const-wide/16 v7, -0x1

    if-gez v6, :cond_1

    iput-wide v7, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    return-void

    :cond_1
    const-string v6, "Accessibility.Android.Usage.Foreground"

    sub-long v4, v0, v4

    invoke-static {v6, v4, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    iput-wide v7, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    return-void

    :cond_2
    const-string v2, "Accessibility.Android.Usage.NativeInit"

    sub-long v3, v0, v4

    invoke-static {v2, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    long-to-double v2, v2

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    sub-long/2addr v0, v2

    const-string v2, "Accessibility.Android.Usage.A11yAlwaysOn"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    :cond_4
    iput-wide v7, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    return-void
.end method

.method public recordCacheHistograms()V
    .locals 6

    iget v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mMaxNodesInCache:I

    const/16 v1, 0xbb8

    const/16 v2, 0x64

    const-string v3, "Accessibility.Android.Cache.MaxNodesInCache"

    const/4 v4, 0x1

    invoke-static {v3, v0, v4, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    iget v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mNodeWasReturnedFromCache:I

    iget v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mNodeWasCreatedFromScratch:I

    add-int/2addr v1, v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v0, v1

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v0

    double-to-int v0, v2

    const-string v1, "Accessibility.Android.Cache.PercentageRetrievedFromCache"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordPercentageHistogram(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mMaxNodesInCache:I

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mNodeWasReturnedFromCache:I

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mNodeWasCreatedFromScratch:I

    return-void
.end method

.method public recordEventsHistograms()V
    .locals 8

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isScreenReaderEnabled()Z

    move-result v0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isOnlyPasswordManagersEnabled()Z

    move-result v1

    iget v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalEnqueuedEvents:I

    if-lez v2, :cond_4

    iget v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalDispatchedEvents:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    int-to-double v5, v2

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    double-to-int v2, v3

    rsub-int/lit8 v3, v2, 0x64

    const-string v4, "Accessibility.Android.OnDemand.PercentageDropped"

    invoke-static {v4, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordPercentageHistogram(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    const-string v4, "Accessibility.Android.OnDemand.PercentageDropped.Complete"

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "Accessibility.Android.OnDemand.PercentageDropped.FormControls"

    goto :goto_0

    :cond_1
    const-string v4, "Accessibility.Android.OnDemand.PercentageDropped.Basic"

    :goto_0
    invoke-static {v4, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordPercentageHistogram(Ljava/lang/String;I)V

    iget v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalEnqueuedEvents:I

    iget v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalDispatchedEvents:I

    sub-int/2addr v3, v4

    const-string v4, "Accessibility.Android.OnDemand.EventsDropped"

    const/4 v5, 0x1

    const/16 v6, 0x2710

    const/16 v7, 0x64

    invoke-static {v4, v3, v5, v6, v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    if-nez v2, :cond_4

    iget v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalEnqueuedEvents:I

    iget v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalDispatchedEvents:I

    sub-int/2addr v2, v3

    const-string v3, "Accessibility.Android.OnDemand.OneHundredPercentEventsDropped"

    invoke-static {v3, v2, v5, v6, v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    if-eqz v0, :cond_2

    const-string v0, "Accessibility.Android.OnDemand.OneHundredPercentEventsDropped.Complete"

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "Accessibility.Android.OnDemand.OneHundredPercentEventsDropped.FormControls"

    goto :goto_1

    :cond_3
    const-string v0, "Accessibility.Android.OnDemand.OneHundredPercentEventsDropped.Basic"

    :goto_1
    iget v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalEnqueuedEvents:I

    iget v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalDispatchedEvents:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1, v5, v6, v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalEnqueuedEvents:I

    iput v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalDispatchedEvents:I

    return-void
.end method

.method public recordInlineTextBoxesDuplicateRequestHistogram(Z)V
    .locals 0

    const-string p0, "Accessibility.Android.InlineTextBoxes.DuplicateRequest"

    invoke-static {p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    return-void
.end method

.method public recordTimeToFirstAccessibilityFocus()V
    .locals 12

    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mHasRecordedTimeToFirstAccessibilityFocus:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->getTalkBackEnabledState()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    sub-long v5, v0, v2

    const-wide/16 v9, 0x1388

    const/16 v11, 0x50

    const-string v4, "Accessibility.Android.Performance.TimeUntilFirstAccessibilityFocus"

    const-wide/16 v7, 0x1

    invoke-static/range {v4 .. v11}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mHasRecordedTimeToFirstAccessibilityFocus:Z

    return-void
.end method

.method public recordTotalTimeCreateAccessibilityNodeInfoHistogram()V
    .locals 8

    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTotalTimeCreateAccessibilityNodeInfo:J

    long-to-float p0, v1

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    return-void

    :cond_0
    const-wide/32 v5, 0xea60

    const/16 v7, 0x50

    const-string v0, "Accessibility.Android.Performance.CreateAccessibilityNodeInfo.TotalTime"

    const-wide/16 v3, 0x1

    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public showAutoDisabledInstance()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfLastDisabledCall:J

    return-void
.end method

.method public updateMaxNodesInCache(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mMaxNodesInCache:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mMaxNodesInCache:I

    return-void
.end method

.method public updateTimeOfFirstShown()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfFirstShown:J

    return-void
.end method

.method public updateTimeOfNativeInitialization()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->mTimeOfNativeInitialization:J

    return-void
.end method
