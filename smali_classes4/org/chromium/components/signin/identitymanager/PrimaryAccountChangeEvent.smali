.class public Lorg/chromium/components/signin/identitymanager/PrimaryAccountChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/identitymanager/PrimaryAccountChangeEvent$Type;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mEventTypeForConsentLevelNotRequired:I

.field private final mEventTypeForConsentLevelSync:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/signin/identitymanager/PrimaryAccountChangeEvent;->mEventTypeForConsentLevelNotRequired:I

    iput p2, p0, Lorg/chromium/components/signin/identitymanager/PrimaryAccountChangeEvent;->mEventTypeForConsentLevelSync:I

    return-void
.end method
