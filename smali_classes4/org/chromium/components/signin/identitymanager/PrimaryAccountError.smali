.class public interface abstract annotation Lorg/chromium/components/signin/identitymanager/PrimaryAccountError;
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
.field public static final ACCOUNT_INFO_EMPTY:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final PRIMARY_ACCOUNT_CHANGE_NOT_ALLOWED:I = 0x5

.field public static final SIGNIN_NOT_ALLOWED:I = 0x4

.field public static final SYNC_CONSENT_ALREADY_SET:I = 0x2
