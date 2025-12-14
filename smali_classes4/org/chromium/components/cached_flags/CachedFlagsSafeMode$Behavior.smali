.class interface abstract annotation Lorg/chromium/components/cached_flags/CachedFlagsSafeMode$Behavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Behavior"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ENGAGED_IGNORING_OUTDATED_SAFE_VALUES:I = 0x3

.field public static final ENGAGED_WITHOUT_SAFE_VALUES:I = 0x4

.field public static final ENGAGED_WITH_SAFE_VALUES:I = 0x2

.field public static final NOT_ENGAGED_BELOW_THRESHOLD:I = 0x1

.field public static final NUM_ENTRIES:I = 0x5

.field public static final UNKNOWN:I
