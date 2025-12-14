.class public interface abstract annotation Lorg/chromium/base/TerminationStatus;
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
.field public static final ABNORMAL_TERMINATION:I = 0x1

.field public static final LAUNCH_FAILED:I = 0x7

.field public static final MAX_ENUM:I = 0xa

.field public static final NORMAL_TERMINATION:I = 0x0

.field public static final OOM:I = 0x8

.field public static final OOM_PROTECTED:I = 0x6

.field public static final PROCESS_CRASHED:I = 0x3

.field public static final PROCESS_WAS_KILLED:I = 0x2

.field public static final STILL_RUNNING:I = 0x4
