.class public interface abstract annotation Lorg/chromium/components/autofill/VerificationStatus;
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
.field public static final FORMATTED:I = 0x2

.field public static final MAX_VALUE:I = 0x5

.field public static final NO_STATUS:I = 0x0

.field public static final OBSERVED:I = 0x3

.field public static final PARSED:I = 0x1

.field public static final SERVER_PARSED:I = 0x5

.field public static final USER_VERIFIED:I = 0x4
