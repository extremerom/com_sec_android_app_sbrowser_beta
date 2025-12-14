.class public interface abstract annotation Lorg/chromium/components/download/DownloadType;
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
.field public static final MAX_DOWNLOAD_TYPE:I = 0x3

.field public static final NORMAL_DOWNLOAD:I = 0x0

.field public static final OFF_THE_RECORD:I = 0x2

.field public static final SECRET_MODE_DOWNLOAD:I = 0x1
