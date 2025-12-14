.class public interface abstract annotation Lorg/chromium/ui/base/ime/TextInputType;
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
.field public static final CONTENT_EDITABLE:I = 0xf

.field public static final DATE:I = 0x8

.field public static final DATE_TIME:I = 0x9

.field public static final DATE_TIME_FIELD:I = 0x10

.field public static final DATE_TIME_LOCAL:I = 0xa

.field public static final EMAIL:I = 0x4

.field public static final MAX:I = 0x11

.field public static final MONTH:I = 0xb

.field public static final NONE:I = 0x0

.field public static final NULL:I = 0x11

.field public static final NUMBER:I = 0x5

.field public static final PASSWORD:I = 0x2

.field public static final SEARCH:I = 0x3

.field public static final TELEPHONE:I = 0x6

.field public static final TEXT:I = 0x1

.field public static final TEXT_AREA:I = 0xe

.field public static final TIME:I = 0xc

.field public static final URL:I = 0x7

.field public static final WEEK:I = 0xd
