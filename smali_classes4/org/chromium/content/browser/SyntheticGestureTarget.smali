.class public Lorg/chromium/content/browser/SyntheticGestureTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mMotionEventSynthesizer:Lorg/chromium/content/browser/MotionEventSynthesizerImpl;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->create(Landroid/view/View;)Lorg/chromium/content/browser/MotionEventSynthesizerImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/SyntheticGestureTarget;->mMotionEventSynthesizer:Lorg/chromium/content/browser/MotionEventSynthesizerImpl;

    return-void
.end method

.method private static create(Landroid/view/View;)Lorg/chromium/content/browser/SyntheticGestureTarget;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/SyntheticGestureTarget;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/SyntheticGestureTarget;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private inject(IIIJ)V
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/SyntheticGestureTarget;->mMotionEventSynthesizer:Lorg/chromium/content/browser/MotionEventSynthesizerImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->inject(IIIJ)V

    return-void
.end method

.method private setPointer(IFFI)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/SyntheticGestureTarget;->mMotionEventSynthesizer:Lorg/chromium/content/browser/MotionEventSynthesizerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->setPointer(IFFI)V

    return-void
.end method

.method private setScrollDeltas(FFFF)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/SyntheticGestureTarget;->mMotionEventSynthesizer:Lorg/chromium/content/browser/MotionEventSynthesizerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->setScrollDeltas(FFFF)V

    return-void
.end method
