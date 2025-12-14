.class public interface abstract annotation Lorg/chromium/content/browser/selection/SelectActionMenuHelper$DefaultItemOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/selection/SelectActionMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DefaultItemOrder"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COPY:I = 0x2

.field public static final CUT:I = 0x1

.field public static final PASTE:I = 0x3

.field public static final PASTE_AS_PLAIN_TEXT:I = 0x4

.field public static final SELECT_ALL:I = 0x6

.field public static final SHARE:I = 0x5

.field public static final WEB_SEARCH:I = 0x7
