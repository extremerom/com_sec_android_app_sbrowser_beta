.class public interface abstract annotation Lorg/chromium/components/download/DownloadState;
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
.field public static final CANCELLED:I = 0x2

.field public static final COMPLETE:I = 0x1

.field public static final INTERRUPTED:I = 0x3

.field public static final IN_PROGRESS:I = 0x0

.field public static final MAX_DOWNLOAD_STATE:I = 0x4
