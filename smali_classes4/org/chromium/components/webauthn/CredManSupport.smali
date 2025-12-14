.class public interface abstract annotation Lorg/chromium/components/webauthn/CredManSupport;
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
.field public static final DISABLED:I = -0x1

.field public static final FULL_UNLESS_INAPPLICABLE:I = 0x2

.field public static final IF_REQUIRED:I = 0x1

.field public static final NOT_EVALUATED:I = 0x0

.field public static final PARALLEL_WITH_FIDO_2:I = 0x3
