.class public interface abstract annotation Lorg/chromium/components/autofill/VirtualCardEnrollmentLinkType;
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
.field public static final MAX_VALUE:I = 0x2

.field public static final VIRTUAL_CARD_ENROLLMENT_GOOGLE_PAYMENTS_TOS_LINK:I = 0x0

.field public static final VIRTUAL_CARD_ENROLLMENT_ISSUER_TOS_LINK:I = 0x1

.field public static final VIRTUAL_CARD_ENROLLMENT_LEARN_MORE_LINK:I = 0x2
