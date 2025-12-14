.class public interface abstract annotation Lorg/chromium/components/security_state/ConnectionSecurityLevel;
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
.field public static final DANGEROUS:I = 0x5

.field public static final NONE:I = 0x0

.field public static final SECURE:I = 0x3

.field public static final SECURITY_LEVEL_COUNT:I = 0x7

.field public static final WARNING:I = 0x6
