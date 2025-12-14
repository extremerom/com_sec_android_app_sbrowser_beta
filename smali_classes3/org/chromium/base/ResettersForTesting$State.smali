.class public interface abstract annotation Lorg/chromium/base/ResettersForTesting$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ResettersForTesting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "State"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BETWEEN_CLASSES:I = 0x1

.field public static final BETWEEN_METHODS:I = 0x3

.field public static final CLASS_SCOPED:I = 0x2

.field public static final METHOD_SCOPED:I = 0x4

.field public static final NOT_ENABLED:I
