.class public interface abstract annotation Lorg/chromium/components/signin/metrics/SyncButtonsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final HISTORY_SYNC_EQUAL_WEIGHTED_FROM_CAPABILITY:I = 0x7

.field public static final HISTORY_SYNC_EQUAL_WEIGHTED_FROM_DEADLINE:I = 0x6

.field public static final HISTORY_SYNC_NOT_EQUAL_WEIGHTED:I = 0x3

.field public static final MAX_VALUE:I = 0x7

.field public static final SYNC_EQUAL_WEIGHTED:I = 0x0

.field public static final SYNC_EQUAL_WEIGHTED_FROM_CAPABILITY:I = 0x5

.field public static final SYNC_EQUAL_WEIGHTED_FROM_DEADLINE:I = 0x4

.field public static final SYNC_NOT_EQUAL_WEIGHTED:I = 0x1
